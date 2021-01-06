srcStr	DCB		'T','h','e',' ','s','o','u','r','c','e',' ','s','t','r','i','n','g','.'
dstStr	DCB		'T','h','e',' ','d','e','s','t','i','n','a','t','i','o','n',' ','s','t','r','i','n','g','.'
		ADR		R0, srcStr ; R0 points to the begining og srcStr array
		ADR		R1, dstStr ; R0 points to the begining og srcStr array
		MOV		R10,#0 ; save 0 in R10
		LDRB		R2, [R0] ; Load one byte from src to R2
loop
		STRB		R2, [R1] ; Store the byte existing at R2 which is read from srcStr to dstStr
		ADD		R0, R0, #1 ; increament R0 address which goes to the next array char(in srcStr)
		ADD		R1, R1, #1 ; increament R1 address which goes to the next array char(in dstStr)
		LDRB		R2, [R0] ; Load one byte from src to R2
		CMP		R10, R2 ; compare if R2 is 0. (if R2 is 0 then the srcStr is ended)
		BNE		loop 
		END
