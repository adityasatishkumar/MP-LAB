.model class
.data
num1 dw 5
num2 dw 6
res dw ?

.code
mov ax,@data
mov ds,ax

mov ax,num1
mov ax,num2
mov res,ax

mov ax,4ch
int 21h
end

