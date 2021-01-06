		mov		r0, #0 ; r0 -> i
		mov		r1, #2 ; r1 -> j
		mov		r2, #15 ; 15
for
		add		r1, r1, r1
		add		r0, r0, #1
		cmp		r0, r2
		bne		for
		end
