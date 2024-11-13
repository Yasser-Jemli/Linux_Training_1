#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>

int main(int argc, char *argv[]) {
    // Check if the file path argument is provided
    if (argc < 2) {
        fprintf(stderr, "Usage: %s <file_path>\n", argv[0]);
        return 1;
    }

    // Open the file specified in the command-line argument
    int fd = open(argv[1], O_RDONLY);
    if (fd == -1) {
        perror("Error opening file");
        return 1;
    }

    // Read and output the file content
    char buffer[100];
    int bytesRead;
    while ((bytesRead = read(fd, buffer, sizeof(buffer))) > 0) {
        write(STDOUT_FILENO, buffer, bytesRead);
    }

    // Check for read error
    if (bytesRead == -1) {
        perror("Error reading file");
    }

    close(fd);
    return 0;
}
