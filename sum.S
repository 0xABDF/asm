section .data
    EDATA db 1, 2, 3, 4, 5   ; Sample array of 5 elements
    SIZE equ $ - EDATA        ; Calculate the size of the array

section .bss
    ESUM resb 1               ; Reserve space for the sum variable (1 byte)

section .text
    global _start

_start:
    ; Initialize sum to 0
    mov byte [ESUM], 0

    ; Calculate the sum of elements in EDATA
    mov cx, SIZE            ; Loop counter
    mov si, 0               ; Index for EDATA array

sum_loop:
    add byte [ESUM], [EDATA + si]  ; Add the current element to the sum
    inc si                         ; Move to the next element
    loop sum_loop                  ; Repeat for all elements

    ; The sum is now stored in ESUM

    ; Your code continues here...

    ; Exit the program
    mov ah, 0x4c          ; DOS function: terminate program
    int 0x21              ; Call DOS

