#include <unistd.h>
#include <sys/syscall.h>
#include <stdio.h>

int main() {
    const char *message = "Hello, directly from a system call !\n";
    syscall(SYS_write, STDOUT_FILENO, message, 37);
    return 0;
}
