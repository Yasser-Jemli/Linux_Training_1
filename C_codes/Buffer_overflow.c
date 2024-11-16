#include <stdio.h>

// Explicit declaration of gets
extern char *gets(char *);

void unsafeFunction() {
    char buffer[10]; // Small buffer of 10 bytes
    printf("Enter some text: ");
    gets(buffer); // Dangerous function (no bounds checking)
    printf("You entered: %s\n", buffer);
}

int main() {
    unsafeFunction();
    return 0;
}
