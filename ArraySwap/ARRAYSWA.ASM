.MODEL SMALL
.DATA

a DB 10H, 20H, 30H, 40H, 50H
b DB 11H, 22H, 33H, 44H, 55H

.CODE

MOV AX, @DATA
MOV DS, AX

LEA SI, a
LEA SI, b

MOV CL, 05H

BACK: MOV AL, [SI]
      XCHG AL, [DI]
      MOV [DI], AL

      INC SI
      INC DI
      LOOP BACK

      LEA SI, a
      LEA DI, b

      MOV AH, 4CH
      INT 21H
      END
