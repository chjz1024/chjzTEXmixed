#include <stdio.h>
#include <sys/socket.h>
#include <stdlib.h>
#include <netinet/in.h>
#include <unistd.h>
#include <string.h>
#include <signal.h>

double send_dg(int chat_fd);

int main(int argc, char *argv[]) {

    int server_fd = socket(AF_INET, SOCK_STREAM, 0); // create a socket file descriptor: ipv4, TCP, ip
    if (server_fd < 0) {
        perror("socket creation failed");
        exit(EXIT_FAILURE);
    }

    struct sockaddr_in address = {
            .sin_family = AF_INET, // ipv4
            .sin_addr.s_addr = INADDR_ANY, // accept any incoming messages
            .sin_port = htons(9090), // port 9090
    }; // client addr

    int addrlen = sizeof(address);
    if (bind(server_fd, (struct sockaddr *) &address, addrlen) < 0) { // bind connection
        perror("bind failed");
        exit(EXIT_FAILURE);
    }

    if (listen(server_fd, 3) < 0) { // listen to connection
        perror("listen failed");
        exit(EXIT_FAILURE);
    }

    int stream_fd = accept(server_fd, (struct sockaddr *) &address, (socklen_t *) &addrlen); // accept connection and bind it to new file descriptor
    if (stream_fd < 0) {
        perror("accept failed");
        exit(EXIT_FAILURE);
    }

    send_dg(stream_fd);

    close(server_fd);

    return 0;
}

double send_dg(int chat_fd) {
    const int len = 1024;
    char buff[len];
    int n;
    while (1) {
        bzero(buff, len);
        read(chat_fd, buff, len);
        printf("%s\n", buff);

        bzero(buff, len);
        n = 0;
        while ((buff[n++] = getchar()) != '\n') { ;
        }

        write(chat_fd, buff, n);
        if (strncmp("exit", buff, 4) == 0) {
            printf("Server Exit\n");
            break;
        }
    }
}