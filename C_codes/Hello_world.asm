section .data
    hello db "Hello, World!", 0xA   ; The message to print, followed by a newline

section .text
    global _start                   ; Required entry point for the linker

_start:
    ; Write "Hello, World!" to stdout
    mov eax, 4                      ; syscall number for sys_write (4)
    mov ebx, 1                      ; file descriptor (1 = stdout)
    mov ecx, hello                  ; pointer to the message
    mov edx, 13                     ; message length
    int 0x80                        ; call kernel

    ; Exit the program
    mov eax, 1                      ; syscall number for sys_exit (1)
    xor ebx, ebx                    ; exit code 0
    int 0x80                        ; call kernel
