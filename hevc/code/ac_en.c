#include<stdio.h>
#include<time.h>
#include<string.h>

typedef unsigned long long u64;
typedef unsigned int u32;
typedef unsigned char u8;

#define ONE_BYTE 8
#define CODING 0x100
#define DEBUG 0

void NOTICE(){

	printf("\nThis is an implementation after Amir Said's Algorithms 22-29([1]).\n");
	printf("It was mostly a learning exercise and hasn't been optimized.\n");
	printf("This Program Is Strictly Prohibited For Commercial Purposes.\n");
	printf("[1]: http://www.hpl.hp.com/techreports/2004/HPL-2004-76.pdf\n");
	printf("Said,  A. \"Introduction to Arithmetic Coding - Theory and Practice.\"\n");
	printf("Hewlett Packard Laboratories Report: 2004-2076.\n\n");

	printf("//////////////////////////////////////////////////////////////////////\n");
	printf("/This is a non-gui version                                           /\n");
	printf("/This program is a part of ARITHMETIC_CODING.                        /\n");
	printf("/If you don't have the \"decoding part\" or want to know more          /\n");
	printf("/about the source code please send e-mail to ying57940815@gmail.com. /\n");
	printf("/                                                                    /\n");
	printf("/This program can only deal with files less than 4 Gigabytes.        /\n");
	printf("/Make sure that requirement is met. Then press Y to continue.        /\n");
	printf("/Or press any other key to exit.                                     /\n");
	printf("//////////////////////////////////////////////////////////////////////\n\n");
}

u32 cum[CODING] = {0};
u32 boundary[CODING + 1] = {0};

void count(char * input)//completed
{
	u32 length;
	FILE *fin = fopen(input,  "rb");
	if(fin)
		printf("input file opened successfully.\n");
	else
		printf("This file doesn't exist.\n");
	int ch;
	while((ch = fgetc(fin)) != EOF)
		cum[ch]++;
	fclose(fin);
	for(int i = 0; i < CODING; i++)
		boundary[i + 1] = boundary[i] + cum[i];

	//model

	char dicout[strlen(input) + 5];
	strcpy(dicout,  input);
	strcat(dicout,  ".dic");
	FILE *dic = fopen(dicout,  "wb");
	if(dic)
		printf("dictionary created successfully.\n");
	else
		printf("you do not have enough permission to perform this operation.\nplease contact the administrator.\n");
	for(int i = 0; i < CODING; i++)
		fwrite(&cum[i],  sizeof(u32),  1,  dic);
	fclose(dic);
#if DEBUG
	for(int i = 0; i < CODING; i++)
		printf("%03x : %08x - %08x\n",  i,  cum[i],  boundary[i]);
#endif

}//completed


void encode(char *input,  char *output)
{
	u64 low = 0,  high = -1,  range;

	u8 temp;

	clock_t start,  finish;

	start = clock();

	FILE *fin = fopen(input,  "rb");
	FILE *fout = fopen(output,  "wb");

	u32 sum = boundary[CODING];

	int ch;

	while((ch = fgetc(fin)) != EOF)
	{
		range = high - low;
		high = low + range / sum * boundary[ch + 1];
		low += range / sum * boundary[ch];
		while((high ^ low) <= 0x00FFFFFFFFFFFFFF)
		{
			temp = high >> 56;
			fwrite(&temp,  1,  1,  fout);
			high <<= ONE_BYTE;
			low <<= ONE_BYTE;
		}
	}
	fclose(fin);

	temp = high >> 56;
	fwrite(&temp,  1,  1,  fout);

	printf("Encoded successfully.\nFile size is %ld Bytes.\n",  ftell(fout));
	printf("Compression rate is %lf.\n",  (double)ftell(fout) / sum);
	finish = clock();
	printf("Time consumed is %lf seconds.\n",  (double)(finish - start) / CLOCKS_PER_SEC);

	fclose(fout);
}



int main(int argc,  char *argv[])
{
	count(argv[1]);
	encode(argv[1],  argv[2]);
	return 0;
}
