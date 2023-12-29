section .text
    global _start

_start:
    ; Sample value in BX
    mov bx, 0b1101101101101

    ; Invert the rightmost 5 bits
    mov cx, 0b11111  ; Bit mask with the rightmost 5 bits set
    not cx           ; Invert the bits in the mask

    and bx, cx       ; Apply the inverted mask to BX

    ; Your code continues here...

    ; Exit the program
    mov ah, 0x4c      ; DOS function: terminate program
    int 0x21          ; Call DOS

