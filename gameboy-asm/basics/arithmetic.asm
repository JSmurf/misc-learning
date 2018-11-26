; The add instruction has a 16-bit version, which is different in that it only changes the Z flag, and also in which X cannot be an immediate value
; There is also an instruction called adc that acts as add, but also adds the carry flag
; Here is an example that emulates add hl, $XXXX
    
; add hl, $1337
; Note: destroys A
ld a, l
add a, $37 ; Process the low 8 bits...
ld l, a ; Store back
ld a, h
adc a, $13 ; Process the upper 8 bits, counting the carry that may have stemmed from the low 8 bits
ld h, a

; And another: 

; hl = $CAFE
ld a, l
add a, $37
; A = $37 + $FE = $35, and Carry set
ld l, a
; hl = $CA35

ld a, h
adc a, $13 ; A = $13 + $CA + 1 (carry set) = $DE
ld h, a
; hl = $DE35

; Guess what this does?
ld a, c
add a, [hl] ; Remember, [hl] is basically an 8-bit register, so you CAN do this!
ld c, a
inc hl
ld a, b
adc a, [hl]
ld b, a
dec hl
; That's right -- this is basically `add bc, [hl]`. Neat, huh?

; sub is an instruction that works the same as add, but doesn't have a 16-bit version

ld a, 3
ld b, 2

sub a, b
; A = $01, Z reset, C reset
sub a, b
; A = $FF, Z reset, C set
sub a, $FF
; A = $00, Z set, C reset
sub a, 0
; A = $00, Z set, C reset

; Here you can see that c is set when there is a borrow or an underflow

; cp is an instruction to compare 2 numbers without affecting the first number
; while sub a, b will subtract b from a and mutate b, cp a, b will not change a

ld a, 42

cp 10 ; 42 - 10 = 32,  C reset (42 >= 10), Z reset (42 != 10)
; Notice how you can chain comparisons? That comes in handy at times
cp 57 ; 42 - 57 = 241, C set   (42 < 10) , Z reset (42 != 10)
cp 42 ; 42 - 42 = 0,   C reset (42 >= 42), Z set   (42 == 42)

; Boolean Algebra

; AND takes each bit of both opperands and sets the corresponding bit of the result to 1 if both are 1

ld a, %01010011
ld b, %00110101
and a, b
;       A  %0101 0011
;       B  %0011 0101
;          ----------
; A and B  %0001 0001

; Now, a = $11

; OR takes each bit of both opperands and sets the corresponding bit if either is 1

ld a, %01010011
ld b, %00110101
or a, b
;      A  %0101 0011
;      B  %0011 0101
;         ----------
; A or B  %0111 0111

; Now, a = $77

; XOR takes each bit of both opperands and sets the corresponding bit if they are both different

ld a, %01010011
ld b, %00110101
xor a, b
;       A  %0101 0011
;       B  %0011 0101
;          ----------
; A xor B  %0110 0110

; Now, a = $66

; You can also use BCD, and the daa instruction performs decimal adjustment on the accumulator
; It basically does math according to the BCD model

ld a, $39
add a, $01
; A = $3A
daa ; Perform M.A.G.I.C
; A = $40