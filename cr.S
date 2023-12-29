section .data
    EDATA db 50 dup(0)   ; Array for even numbers
    ODATA db 50 dup(0)   ; Array for odd numbers

section .text
    global _start

_start:
    mov cx, 50           ; Loop counter
    mov si, 0            ; Index for even array (EDATA)
    mov di, 0            ; Index for odd array (ODATA)

    ; Fill EDATA with the first 50 unsigned even numbers
even_loop:
    mov ax, si           ; Load current index into AX
    shl ax, 1            ; Multiply by 2 (ax = 2 * si)
    mov [EDATA + si], ax ; Store even number in array
    inc si               ; Increment index for even array
    loop even_loop       ; Repeat for 50 numbers

    ; Reset indices for the next loop
    mov si, 0
    mov di, 0

    ; Fill ODATA with the first 50 unsigned odd numbers
odd_loop:
    mov ax, di           ; Load current index into AX
    shl ax, 1            ; Multiply by 2 (ax = 2 * di)
    inc ax               ; Increment to make it odd
    mov [ODATA + di], ax ; Store odd number in array
    inc di               ; Increment index for odd array
    loop odd_loop        ; Repeat for 50 numbers

    ; Your code continues here...

    ; Exit the program
    mov ah, 0x4c         ; DOS function: terminate program
    int 0x21             ; Call DOS

section .bss
    ; (You may need to define additional sections or variables as needed)

