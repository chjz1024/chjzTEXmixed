#include <stdio.h>
#include <sys/socket.h>
#include <stdlib.h>
#include <netinet/in.h>
#include <unistd.h>
#include <string.h>
#include <arpa/inet.h>

int main(int argc, char *argv[]) {

    int client_fd = socket(AF_INET, SOCK_DGRAM, 0); // create a socket file descriptor: ipv4, UDP, ip
    if (client_fd < 0) {
        perror("socket creation failed");
        exit(EXIT_FAILURE);
    }

    struct sockaddr_in address={
            .sin_family = AF_INET, // ipv4
            .sin_port = htons(9090), // port 9090
            .sin_addr.s_addr = INADDR_ANY,
    }; // server addr

    if (inet_pton(AF_INET, "127.0.0.1", &address.sin_addr) <= 0) { // check validity of ip addr
        perror("Invalid address");
        exit(EXIT_FAILURE);
    }

    const int len = 1000;
    for (int i = 0; i < len + 1; i++) {
        sendto(client_fd, &i, sizeof(i), MSG_CONFIRM, (const struct sockaddr *)&address, sizeof(address));
    }
    printf("1000 message sent");

    close(client_fd);

    return 0;
}
