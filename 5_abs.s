		ldr		r0, =0x7FFFFFFF ; for checking negetivity
		ldr		r1, =0xFFFFFFFF ; -1
		ldr		r2, =0xCCCC1010 ; sample negetive number
		;		ldr		r2, =0x0022CFAB ; sample positive number
		cmp		r2, r0
		bhi		negetive
finish	end
negetive
		eor		r2, r2, r1 ; r2 = bitwise not r2
		add		r2, r2, #1 ; r2++
		b		finish
