section .data
    EDATA db 1, 2, 3, 4, 5    ; Sample array of 5 elements (even numbers)
    ODATA db 10, 11, 12, 13, 14 ; Sample array of 5 elements (odd numbers)
    SIZE equ $ - EDATA         ; Calculate the size of the arrays

section .text
    global _start

_start:
    ; Initialize indices to swap (you can change these indices as needed)
    mov si, 1  ; Index 1
    mov di, 3  ; Index 2

    ; Swap elements at indices si and di in EDATA
    mov al, [EDATA + si]  ; Load element at index si in EDATA into AL
    mov ah, [EDATA + di]  ; Load element at index di in EDATA into AH
    mov [EDATA + si], ah  ; Store AH at index si in EDATA
    mov [EDATA + di], al  ; Store AL at index di in EDATA

    ; Swap elements at indices si and di in ODATA
    mov al, [ODATA + si]  ; Load element at index si in ODATA into AL
    mov ah, [ODATA + di]  ; Load element at index di in ODATA into AH
    mov [ODATA + si], ah  ; Store AH at index si in ODATA
    mov [ODATA + di], al  ; Store AL at index di in ODATA

    ; Your code continues here...

    ; Exit the program
    mov ah, 0x4c          ; DOS function: terminate program
    int 0x21              ; Call DOS

