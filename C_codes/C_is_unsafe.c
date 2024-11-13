#include <stdio.h>
#include <stdlib.h>

int main() {
    int T[40];  // Array of 40 integers

    // Print the address of the last element (index 39)
    printf("Address of T[39]: %p\n", (void*)&T[39]);

    // Print the address of one past the last element (index 40000, out-of-bounds but illustrative)
    printf("Address of T[40000] (out-of-bounds): %p\n", (void*)&T[40000]);

    // Print the value of the last element (index 39) instead of T[40]
    printf("Value of T[39]: %d\n", T[39]);

    // Print the calue of out-of-bounds 40000
    printf("calue of T[40000]: %d\n" , T[40000]);
    return 0;
}

