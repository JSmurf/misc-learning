; The CPU has a 16-bit register called PC for program counter. 
; The following happens when the CPU executes instruction:
; 1. The byte [pc] is read (this means that if PC = $1234, the byte at $1234 is read)
; 2. pc is incremented
; 3. That byte is decoded so the CPU knows which instruction it should execute
; 4. If the instruction has operand byte(s), it is/they are read as well, one by one, and pc is incremented after each read
; 5. The instruction is executed proper

; Code exeutes linearly, so PC counts up from $0000 to $FFFF
; jp, jr, call, rst, and ret all cmodify PC, and the last 3 deal with the stack.

; jp is the instruction for jump, which sets the PC
jp $1234 ; sets pc to $1234

; jp can also take an opperand that will affect execution based on glags
; the conditions are as follows:
; Non-Zero - when zero is reset
; Zero - when zero is set
; No Carry - when carry is reset
; Carry - when carry is set

    ld a, [wPlayerHP]
    and a ; Is it 0?
    jp z, GameOver ; If HP hit 0, play Game Over animation
    cp 10 ; Is it under 10 HP?
    jr nc, .noLowHealthBeep ; If above 10 HP, don't beep

    ; We're going to see just below that jr is essentially the same as jp
    ...

.noLowHealthBeep

; jr functions like jp but is relative to pc, so you jump up or down by the number that is passed to jp