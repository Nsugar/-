DATA SEGMENT
     STR DB 'Hello world!',0DH,0AH,'$'
DATA ENDS
CODE SEGMENT
    ASSUME CS:CODE,DS:DATA
 START:
     MOV AX,DATA
     MOV DS,AX
     MOV DX,OFFSET STR
     MOV AH, 9
     INT 21H
     MOV AH,4CH
     INT 21H
 CODE ENDS
     END START