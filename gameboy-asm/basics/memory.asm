; This is okay
ld [$ABAD], a
ld a, [$1DEA]

; This is not
ld [$DEAD], 1
ld bc, [$BEEF]


; This is Ok
ld a, [de]
ld [bc], a

; This is Not ok
ld c, [de]
ld [de], hl

; This is Ok
ld a, [hl]
ld l, [hl]
ld [hl], c

; This is Not ok
ld bc, [hl]
ld [hl], [hl]