; The GBz80 has 8 registers, a, f, b, c, d, e, h, and l
; ld is an instruction for LOAD, and the syntax is ld dest, source

ld l, a ; Copy the value in A into L. A's value is preserved.
ld h, 0 ; Put 0 into H ("0" is an immediate value, here)
ld c, $2A ; Put 42 into C ("$2A" is also an immediate)

; Registers can also be paired up, as bc, de, and hl

ld hl, $1245
ld l, $34 ; HL = $1234 now
    
ld c, $FE
ld b, $CA
; BC = $CAFE now