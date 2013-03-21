; Gaping Rainbow

.segment "INES"
	.byte "NES", $1A,1,0,9

.segment "VECTORS"
	.word 0, Start, 0

.segment "CODE"

Start:
	; Wait two frames
	lda	$2002
	bpl	Start
:	lda $2002
	bpl :-

	; color
	lda #$3F
	sta $2006
	lda #$00
	sta $2006

	lda #$11	; blue
	sta $2007	

	lda	#0
	sta $2000
	lda #%11111110
	sta $2001

Loop:
	jmp Loop
