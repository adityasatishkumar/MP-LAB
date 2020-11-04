.model small
.data
n db 6
a db 05,07,04,03,06,02

.code
mov ax,@data
mov ds,ax

lea si,a
mov cl, n
dec cl
outloop: mov al, a[si]
MOV SI, 00H
INLOOP: MOV AL, A[SI]
INC SI
CMP AL, A[SI]
jc noexchange
xchg al, a[si]
mov a[si-1], al
noexchange: dec ch
jnz inloop
dec cl
jnz outloop

mov ah, 4ch
int 21h
end
