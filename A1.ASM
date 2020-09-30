.model small
.data
num1 db 5
num2 db 6
res db ?

.code
mov ax,@data
mov ds,ax

mov al,num1
mov al,num2
mov res,al

mov ah,4ch
int 21h
end
