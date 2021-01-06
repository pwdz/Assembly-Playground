		;		result = a ^ b
		mov		r0, #3 ; a
		mov		r1, #4 ; b
		mov		r2, r0 ;
		mov		r4, r0 ; r4 is the default value of r0
		
		
		
pow
		mov		r3, r4
multiply
		add		r2, r2, r0
		sub		r3, r3, #1
		cmp		r3,#1
		bne		multiply
		
		mov		r0, r2
		sub		r1, r1, #1
		cmp		r1, #1
		bne		pow
		end
