		mov		r0, #0 ; r0 -> i
		mov		r1, #0 ; r1 -> sum
		mov		r2, #20 ; 20 (for condition)
		ldr		r3, =0x5000000 ; *ptr
for
		ldr		r4, [r3] ;r4 = *(ptr)
		add		r1, r1, r4 ;sum+=*(ptr)
		add		r3, r3, #4 ;ptr++
		;;;;;;;;;;;;;;;
		;;		for conditions
		add		r0, r0, #1 ; i++
		cmp		r0, r2 ; compare i&20
		bne		for
		end
