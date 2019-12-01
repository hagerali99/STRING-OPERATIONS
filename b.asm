  .MODEL SMALL
        .STACK 64
        .DATA

mess db 30,?,30 dup('$')
mes db 'MY NAME IS HAGER','$' 
mes1 db 'HEY THERE','$' 
        .code
MAIN    PROC FAR               
        MOV AX,@DATA
        MOV DS,AX 

        ;MOV AX,0612H     ;clear page
		;MOV BH,07H
		;MOV CX,0
		;MOV DX,184FH
		;INT 10H
		
	
		MOV AH,2         ;move cursor
		MOV DX,0A0AH
		INT 10H
		
		
		MOV AH,09H       ;display string
		MOV DX,OFFSET MES
		INT 21H
		
		MOV AH,3H        ;GET CURSOR POSTION
		MOV BH,0         ;DL  DH
		INT 10H
		
		ADD DX,0110H     ;MOV CURSOR
		MOV AH,2
		INT 10H
	
	    MOV AH,09H       ;display string
		MOV DX,OFFSET MES1
		INT 21H
		
		
		
		;;;;;;;TO STOP THE DOS;;;;;;;;
		MOV AH,0AH       ;read string
		MOV DX,OFFSET MESS
		INT 21H
		
        HLT
MAIN    ENDP
        END MAIN