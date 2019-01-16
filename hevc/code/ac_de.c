#include<stdio.h>
#include<time.h>

typedef unsigned long long u64;
typedef unsigned int u32;
typedef unsigned char u8;

#define ONE_BYTE 8
#define CODING 0x100
#define DEBUG 0

void NOTICE()
{
	printf("\nThis is an implementation after Amir Said's Algorithms 22-29([1]).\n");
	printf("It was mostly a learning exercise and hasn't been optimized.\n");
	printf("This Program Is Strictly Prohibited For Commercial Purposes.\n");
	printf("[1]: http://www.hpl.hp.com/techreports/2004/HPL-2004-76.pdf\n");
	printf("Said,  A. \"Introduction to Arithmetic Coding - Theory and Practice.\"\n");
	printf("Hewlett Packard Laboratories Report: 2004-2076.\n\n");

	printf("//////////////////////////////////////////////////////////////////////\n");
	printf("/This is a non-gui version                                           /\n");
	printf("/This program is a part of ARITHMETIC_CODING.                        /\n");
	printf("/If you don't have the \"encoding part\" or want to know more          /\n");
	printf("/about the source code please send e-mail to ying57940815@gmail.com. /\n");
	printf("//////////////////////////////////////////////////////////////////////\n\n");
}

u32 cum[CODING] = {0};
u32 boundary[CODING + 1] = {0};

void create_dict(char *dic)
{
	FILE *din = fopen(dic,  "rb");
	if(din)
		printf("dictionary opened successfully.\n");
	else
		printf("dictionary does not exist.\n"); // uncompleted
	int i;
	for(i = 0; i < CODING; i++)
		fread(&cum[i],  sizeof(u32),  1,  din);
	fclose(din);
	for(i = 0; i < CODING; i++)
		boundary[i + 1] = boundary[i] + cum[i];
#if DEBUG
	for(int i = 0; i < CODING; i++)
		printf("%03x : %08x - %08x\n",  i,  cum[i],  boundary[i]);
#endif
}

void decode(char *encoded,  char *out)
{
	FILE *fin = fopen(encoded,  "rb");
	if(!fin)
		printf("encoded file does not exist\n");

	clock_t start,  finish;
	start = clock();

	FILE *fout = fopen(out,  "wb");

	u64 low = 0,  high = -1,  range;

	u8 temp;
	u64 ari = 0;

	for (int i = 0; i < ONE_BYTE; i++)
	{
		if(fread(&temp,  1,  1,  fin))
			ari = (ari << ONE_BYTE) | temp;
		else
			ari <<= ONE_BYTE;
	} //the first 64 bits

	u8 bisec1,  bisec2,  mid;
	u32 sum = boundary[CODING];
	for (u32 i = 0; i < sum; )
	{
		bisec1 = 0;
		bisec2 = -1;
		range = high - low;

		while(bisec1 <= bisec2)
		{
			mid = (bisec1 + bisec2) / 2;
			if(ari >= low + range / sum * boundary[mid + 1])
				bisec1 = mid + 1;
			else if(ari < low + range / sum * boundary[mid])
				bisec2 = mid - 1;
			else
			{
				fwrite(&mid,  1,  1,  fout);
				i++;
				high = low + range / sum * boundary[mid + 1];
				low += range / sum * boundary[mid];
				while((high ^ low) <= 0x00FFFFFFFFFFFFFF)
				{
					high <<= ONE_BYTE;
					low <<= ONE_BYTE;
					if(fread(&temp,  1,  1,  fin))
						ari = (ari << ONE_BYTE) | temp;
					else
						ari <<= ONE_BYTE;
				}
				break;
			}
		}
	}
	fclose(fin);
	fclose(fout);
	printf("Decoded successfully.\n\n");
	finish = clock();
	printf("Time consumed is %lf seconds.\n\n",  (double)(finish - start) / CLOCKS_PER_SEC);
}

int main(int argc,  char*argv[])
{
	create_dict(argv[1]);
	decode(argv[2],  argv[3]);
	return 0;
}
