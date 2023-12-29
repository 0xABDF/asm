section .data
    ODATA db 10, 11, 12, 13, 14   ; Sample array of 5 elements
    SIZE equ $ - ODATA            ; Calculate the size of the array

section .bss
    OSUM resb 1                   ; Reserve space for the sum variable (1 byte)

section .text
    global _start

_start:
    ; Initialize sum to 0
    mov byte [OSUM], 0

    ; Calculate the sum of elements in ODATA
    mov cx, SIZE            ; Loop counter
    mov si, 0               ; Index for ODATA array

sum_loop:
    add byte [OSUM], [ODATA + si]  ; Add the current element to the sum
    inc si                         ; Move to the next element
    loop sum_loop                  ; Repeat for all elements

    ; The sum is now stored in OSUM

    ; Your code continues here...

    ; Exit the program
    mov ah, 0x4c          ; DOS function: terminate program
    int 0x21              ; Call DOS

