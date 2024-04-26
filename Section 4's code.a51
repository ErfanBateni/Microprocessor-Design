ORG 0H

MOV DPTR, #0FF00H;
MOV R0, #0;
MOV A, #0;
CLR C;
LJMP $+3;
INC A;
ADD A, P2;
MOV R1, A;

LOOP:
    MOVX @DPTR, R0;
    INC DPTR;
    INC R0;
    DJNZ R1, LOOP;

END
