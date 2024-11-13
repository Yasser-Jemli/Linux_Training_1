#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>

int main() {
    int fd = open("file.txt", O_RDONLY); // Open file using glibc
    if (fd == -1) {
        perror("Error opening file");
        return 1;
    }

    char buffer[1000000];
    int bytesRead = read(fd, buffer, sizeof(buffer)); // Read file content
    if (bytesRead == -1) {
        perror("Error reading file");
        close(fd);
        return 1;
    }

    write(STDOUT_FILENO, buffer, bytesRead); // Output content
    close(fd);
    return 0;
}
