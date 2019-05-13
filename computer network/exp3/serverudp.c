#include <stdio.h>
#include <sys/socket.h>
#include <stdlib.h>
#include <netinet/in.h>
#include <unistd.h>
#include <string.h>
#include <signal.h>

int main(int argc, char *argv[]) {

    int server_fd = socket(AF_INET, SOCK_DGRAM, 0); // create a socket file descriptor: ipv4, UDP, ip
    if (server_fd < 0) {
        perror("socket creation failed");
        exit(EXIT_FAILURE);
    }

    struct sockaddr_in address = {
            .sin_family = AF_INET, // ipv4
            .sin_addr.s_addr = INADDR_ANY, // accept any incoming messages
            .sin_port = htons(9090), // port 9090
    }; // client addr

    if (bind(server_fd, (struct sockaddr *) &address, sizeof(address)) < 0) { // bind connection
        perror("bind failed");
        exit(EXIT_FAILURE);
    }

    int i;
    int n = 0;
    struct sockaddr_in cliaddr; int len;
    for(;;) {
        recvfrom(server_fd, &i, sizeof(i), MSG_WAITALL, (struct sockaddr *) &cliaddr, (socklen_t *) &len);
        if(i == 1000) {
            break;
        }
        n++;
    }
    printf("%d\n", n);

    close(server_fd);

    return 0;
}