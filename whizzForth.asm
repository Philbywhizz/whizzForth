SECTION     .text

global      _start

_start:
    ; Print "Hello World"
    mov     rax, 1
    mov     rdi, 1
    mov     rsi, message
    mov     rdx, 13
    syscall

    ; exit the program
    mov     rax, 60             ; SYS_EXIT
    mov     rdi, 0              ; EXIT_SUCCESS
    syscall

SECTION     .data

message:
    db      'Hello world!',0xa

