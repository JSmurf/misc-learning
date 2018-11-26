; The f register is used for flags. The last 4 bits of the f register are c, h, n, and z
; c stands for Carry
; h stands for Half-Carry
; n stands for Add/Subtract
; z stands for Zero

; z is set if the result of an operation is zero, and it is reset if the result is not zero
; for example: 

ld b, $FF
dec b
; B = $FE, Z reset
inc b
; B = $FF, Z reset
inc b
; B = $00, Z set
inc b
; B = $01, Z reset
dec b
; B = $00, Z set

ld b, $FE
; B = $FE, Z set (keep in mind, `ld` doesn't affect flags!)
inc b
; B = $FF, Z reset
ld b, 0
; B = $00, Z reset

; c is used to store wether another bit is being carried after adding two numbers toget
; for example: 

ld a, $EF
ld b, $10

add a, b
; A = $FF, Z reset, C reset
add a, b
; A = $0F, Z reset, C set
add a, b
; A = $1F, Z reset, C reset
add a, $E1
; A = $00, Z set, C set
add a, 0
; A = $00, Z set, C reset

; The h and n flags are going to be explained later