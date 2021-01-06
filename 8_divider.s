		mov		r0, #63 ;dividend
		mov		r1, #6 ;divisor
		mov		r2, #0 ;quotient
		mov		r3, #0 ;remainder
		
		;;		check if dividend >= divisor
for		cmp		r0, r1
		blo		finish
		
		;dividend	= dividend - divisor
		sub		r0, r0, r1
		
		;increase	quotient
		add		r2, r2, #1
		
		b		for
		
finish
		mov		r3, r0
		end
