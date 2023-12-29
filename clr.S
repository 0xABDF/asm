section .text
    global _start

_start:
    ; Sample value in BX
    mov bx, 0b1101101101101

    ; Create a mask with bits 2, 6, and 8 set to 0
    mov cx, 0b11111011101  ; Bit mask with bits 2, 6, and 8 set to 0

    ; Clear the bits in BX
    and bx, cx

    ; Your code continues here...

    ; Exit the program
    mov ah, 0x4c      ; DOS function: terminate program
    int 0x21          ; Call DOS

