		mov		r0, #2
		mov		r1, #10
		mov		r2, r0
		subs		r1, r1, #1
multiply
		add		r2, r2, r0
		subs		r1, r1, #1
		bne		multiply
		;		b here b
		end
