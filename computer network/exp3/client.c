#include <stdio.h>
#include <sys/socket.h>
#include <stdlib.h>
#include <netinet/in.h>
#include <unistd.h>
#include <string.h>
#include <arpa/inet.h>
double send_dg(int chat_fd);

int main(int argc, char *argv[]) {

    int client_fd = socket(AF_INET, SOCK_STREAM, 0); // create a socket file descriptor: ipv4, TCP, ip
    if (client_fd < 0) {
        perror("socket creation failed");
        exit(EXIT_FAILURE);
    }

    struct sockaddr_in address={
            .sin_family = AF_INET, // ipv4
            .sin_port = htons(9090), // port 9090
    }; // server addr

    if (inet_pton(AF_INET, "127.0.0.1", &address.sin_addr) <= 0) { // check validity of ip addr
        perror("Invalid address");
        exit(EXIT_FAILURE);
    }

    if (connect(client_fd, (struct sockaddr *) &address, sizeof(address))) { // connect to server
        perror("Connection failed");
        exit(EXIT_FAILURE);
    }

    send_dg(client_fd);
    close(client_fd);

    return 0;
}

double send_dg(int chat_fd) {
    const int len = 1024;
    char buff[len];
    int n;
    while (1) {
        bzero(buff, len);
        n = 0;
        while ((buff[n++] = getchar()) != '\n') { ;
        }

        write(chat_fd, buff, n);

        bzero(buff, len);
        read(chat_fd, buff, len);
        printf("%s\n", buff);
        if (strncmp("exit", buff, 4) == 0) {
            printf("Server Exit\n");
            break;
        }
    }
}