ADDRESS	EQU		0x04000000
		;		R0: counter
		;		R2: sum reg
		;		R3 address reg
		;		R4: memory value
		MOV		R0, #15
		MOV		R2, #0
		LDR		R3, =ADDRESS
sum
		LDR		R4, [R3] ;Load value from memory
		ADD		R2, R2, R4 ;Add value to R2
		ADD		R3,R3,#4 ;Set address to 4bytes next
		SUBS		R0,R0,#1 ;Decrease counter by 1
		BNE		sum ;if counter != 0 continue the summation
		END
