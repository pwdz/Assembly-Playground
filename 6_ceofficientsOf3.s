		mov		r0, #27 ;
		mov		r1, #0 ; iterates from 0 to r0
		mov		r2, #0 ; holds the count of numbers dividable to 3(including 0)
		mov		r3, #0 ; holds the coefficients of 3
for ;iterate from 0 to r0
		; check if r1 is a coefficient of 3
		cmp		r3, r1 
		beq		dividable
continue
		; increase r1 ( 0 to r0)
		; and check if r1 is still smaller or equal to r0
		add		r1, r1, #1
		cmp		r1, r0
		bls		for
		b		finish
		
dividable
		;r2++
		;set r3 to the next ceofficient of 3
		add		r2, r2, #1
		add		r3, r3, #3
		b		continue
		
finish	end
