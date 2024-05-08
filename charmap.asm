* = $c900
start:
    jmp Main

sintable:
	.byte 61,67,73,79,85,91,96,101,106,110,113,116,119,120,121
	.byte 122,121,120,119,116,113,110,106,101,96,91,85,79,73,67,60
	.byte 54,48,42,36,30,25,20,15,11,8,5,2,1,0,0,0
	.byte 1,2,5,8,11,15,20,25,30,36,42,48,54,60,67,73
	.byte 79,85,91,96,101,106,110,113,116,119,120,121,122,121,120,119
	.byte 116,113,110,106,101,96,91,85,79,73,67,61,54,48,42,36
	.byte 30,25,20,15,11,8,5,2,1,0,0,0,1,2,5,8
	.byte 11,15,20,25,30,36,42,48,54

Charmap_start:
    lda #$1c
    sta $d018

charmap_clear:
    lda #0
    tax
    tay
charmap_clear_cycle:
    sta $3000,x
    sta $3100,x
    sta $3200,x
    sta $3300,x
    sta $3400,x        
    sta $3500,x
    sta $3600,x
    sta $3700,x
    inx
    bne charmap_clear_cycle
    rts

Put_screen_chars:
clear_screen:
    lda #00
    ldx #00
    ldy #00
    sta $d020
    sta $d021
clear_screen_cycle1:
    lda #00
    sta $d800,x
    sta $d900,x
    sta $da00,x
    lda #$20
    sta $0400,x
    sta $0500,x
    sta $0600,x
    inx
    bne clear_screen_cycle1
    ldx #00
clear_screen_cycle2:    
    lda #00
    sta $db00,x
    lda #$20
    sta $0700,x
    inx
    cpx #$e8
    bne clear_screen_cycle2

put_screen_chars:
    ldx #$00
    ldy #$00
put_screen_chars_cycle0:
    txa
    sta 1024+0*40+(4*40)+12,y
    lda #$01
    sta 55296+0*40+(4*40)+12,y
    iny
    inx
    cpx #$10
    bne put_screen_chars_cycle0


    ldy #$00
put_screen_chars_cycle1:
    txa
    sta 1024+1*40+(4*40)+12,y
    lda #$01
    sta 55296+1*40+(4*40)+12,y
    iny
    inx    
    cpx #$20
    bne put_screen_chars_cycle1

    ldy #$00
put_screen_chars_cycle2:
    txa
    sta 1024+2*40+(4*40)+12,y
    lda #$01
    sta 55296+2*40+(4*40)+12,y
    iny
    inx    
    cpx #$30
    bne put_screen_chars_cycle2

    ldy #$00
put_screen_chars_cycle3:
    txa
    sta 1024+3*40+(4*40)+12,y
    lda #$01
    sta 55296+3*40+(4*40)+12,y
    iny
    inx    
    cpx #$40
    bne put_screen_chars_cycle3

    ldy #$00
put_screen_chars_cycle4:
    txa
    sta 1024+4*40+(4*40)+12,y
    lda #$01
    sta 55296+4*40+(4*40)+12,y
    iny
    inx    
    cpx #$50
    bne put_screen_chars_cycle4

    ldy #$00
put_screen_chars_cycle5:
    txa
    sta 1024+5*40+(4*40)+12,y
    lda #$01
    sta 55296+5*40+(4*40)+12,y
    iny
    inx    
    cpx #$60
    bne put_screen_chars_cycle5

    ldy #$00
put_screen_chars_cycle6:
    txa
    sta 1024+6*40+(4*40)+12,y
    lda #$01
    sta 55296+6*40+(4*40)+12,y
    iny
    inx    
    cpx #$70
    bne put_screen_chars_cycle6

    ldy #$00
put_screen_chars_cycle7:
    txa
    sta 1024+7*40+(4*40)+12,y
    lda #$01
    sta 55296+7*40+(4*40)+12,y
    iny
    inx    
    cpx #$80
    bne put_screen_chars_cycle7

    ldy #$00
put_screen_chars_cycle8:
    txa
    sta 1024+8*40+(4*40)+12,y
    lda #$01
    sta 55296+8*40+(4*40)+12,y
    iny
    inx    
    cpx #$90
    bne put_screen_chars_cycle8

    ldy #$00
put_screen_chars_cycle9:
    txa
    sta 1024+9*40+(4*40)+12,y
    lda #$01
    sta 55296+9*40+(4*40)+12,y
    iny
    inx    
    cpx #$a0
    bne put_screen_chars_cycle9

    ldy #$00
put_screen_chars_cyclea:
    txa
    sta 1024+10*40+(4*40)+12,y
    lda #$01
    sta 55296+10*40+(4*40)+12,y
    iny
    inx    
    cpx #$b0
    bne put_screen_chars_cyclea

    ldy #$00
put_screen_chars_cycleb:
    txa
    sta 1024+11*40+(4*40)+12,y
    lda #$01
    sta 55296+11*40+(4*40)+12,y
    iny
    inx    
    cpx #$c0
    bne put_screen_chars_cycleb

    ldy #$00
put_screen_chars_cyclec:
    txa
    sta 1024+12*40+(4*40)+12,y
    lda #$01
    sta 55296+12*40+(4*40)+12,y
    iny
    inx    
    cpx #$d0
    bne put_screen_chars_cyclec

    ldy #$00
put_screen_chars_cycled:
    txa
    sta 1024+13*40+(4*40)+12,y
    lda #$01
    sta 55296+13*40+(4*40)+12,y
    iny
    inx    
    cpx #$e0
    bne put_screen_chars_cycled

    ldy #$00
put_screen_chars_cyclee:
    txa
    sta 1024+14*40+(4*40)+12,y
    lda #$01
    sta 55296+14*40+(4*40)+12,y
    iny
    inx    
    cpx #$f0
    bne put_screen_chars_cyclee

    ldy #$00
put_screen_chars_cyclef:
    txa
    sta 1024+15*40+(4*40)+12,y
    lda #$01
    sta 55296+15*40+(4*40)+12,y
    iny
    inx    
    bne put_screen_chars_cyclef
    rts

// --- Character pointers in first columns (by y coords), low/hi address ---
mem_offset_low:
    .byte $00,$80,$00,$80,$00,$80,$00,$80
    .byte $00,$80,$00,$80,$00,$80,$00,$80
mem_offset_hi:
    .byte $c0,$c0,$c1,$c1,$c2,$c2,$c3,$c3
    .byte $c4,$c4,$c5,$c5,$c6,$c6,$c7,$c7
// --- Bit points on char lines (by x coord) ---
bits_x:
    .byte $80,$40,$20,$10,$08,$04,$02,$01
    .byte $80,$40,$20,$10,$08,$04,$02,$01
    .byte $80,$40,$20,$10,$08,$04,$02,$01
    .byte $80,$40,$20,$10,$08,$04,$02,$01
    .byte $80,$40,$20,$10,$08,$04,$02,$01
    .byte $80,$40,$20,$10,$08,$04,$02,$01
    .byte $80,$40,$20,$10,$08,$04,$02,$01
    .byte $80,$40,$20,$10,$08,$04,$02,$01
    .byte $80,$40,$20,$10,$08,$04,$02,$01
    .byte $80,$40,$20,$10,$08,$04,$02,$01
    .byte $80,$40,$20,$10,$08,$04,$02,$01
    .byte $80,$40,$20,$10,$08,$04,$02,$01
    .byte $80,$40,$20,$10,$08,$04,$02,$01
    .byte $80,$40,$20,$10,$08,$04,$02,$01
    .byte $80,$40,$20,$10,$08,$04,$02,$01
    .byte $80,$40,$20,$10,$08,$04,$02,$01
offsets_x:
    .byte 0,8,16,24,32,40,48,56
    .byte 64,72,80,88,96,104,112,120

// --- Char line offset (by y coord) ---
rows_y:
    .byte 0,1,2,3,4,5,6,7
    .byte 0,1,2,3,4,5,6,7
    .byte 0,1,2,3,4,5,6,7
    .byte 0,1,2,3,4,5,6,7
    .byte 0,1,2,3,4,5,6,7
    .byte 0,1,2,3,4,5,6,7
    .byte 0,1,2,3,4,5,6,7
    .byte 0,1,2,3,4,5,6,7
    .byte 0,1,2,3,4,5,6,7
    .byte 0,1,2,3,4,5,6,7
    .byte 0,1,2,3,4,5,6,7
    .byte 0,1,2,3,4,5,6,7
    .byte 0,1,2,3,4,5,6,7
    .byte 0,1,2,3,4,5,6,7
    .byte 0,1,2,3,4,5,6,7
    .byte 0,1,2,3,4,5,6,7
mem_page_offset:
    .byte 0
draw_x:
    .byte 0
draw_y:
    .byte 0
draw_color:
    .byte 0
color_offset:
    .byte 0
Draw_point:
    sta draw_color
    stx draw_x
    sty draw_y
    tya
    lsr 
    lsr 
    lsr
    tax
    lda mem_offset_hi,x
    sta $03
    lda mem_offset_low,x
    sta $02

    lda rows_y,y
    sta mem_page_offset

    lda draw_x
    lsr 
    lsr
    lsr
    tay
    lda mem_page_offset
    clc
    adc offsets_x,y
    sta mem_page_offset
    tay

    lda ($02),y
    ldx draw_x
    ora bits_x,x
    sta ($02),y

    /* fill color*/
    lda draw_x
    lsr
    lsr
    lsr // div $08
    sta color_offset

    lda draw_y
    lsr
    lsr
    lsr
    asl
    asl
    asl
    asl // (A. div $08) mul $10
    adc color_offset
    tax

    lda draw_color
    sta $c800,x

    ldx draw_x
    ldy draw_y
    lda draw_color

    rts

blob_x:
    .byte 0

Draw_blob:
    stx blob_x
    
    inx
    jsr Draw_point
    inx
    jsr Draw_point
    inx
    jsr Draw_point
    inx
    jsr Draw_point

    iny
    
    ldx blob_x
    jsr Draw_point
    inx
    jsr Draw_point
    inx
    jsr Draw_point
    inx
    jsr Draw_point
    inx
    jsr Draw_point
    inx
    jsr Draw_point

    iny

    ldx blob_x
    jsr Draw_point
    inx
    jsr Draw_point
    inx
    jsr Draw_point
    inx
    jsr Draw_point
    inx
    jsr Draw_point
    inx
    jsr Draw_point

    iny

    ldx blob_x
    jsr Draw_point
    inx
    jsr Draw_point
    inx
    jsr Draw_point
    inx
    jsr Draw_point
    inx
    jsr Draw_point
    inx
    jsr Draw_point

    iny

    ldx blob_x
    inx
    jsr Draw_point
    inx
    jsr Draw_point
    inx
    jsr Draw_point
    inx
    jsr Draw_point

    rts

Clear_buffer:
    lda #0
    tax
clear_buffer_cycle:
    sta $c000,x
    sta $c100,x
    sta $c200,x
    sta $c300,x
    sta $c400,x
    sta $c500,x
    sta $c600,x
    sta $c700,x    
    sta $c800,x
    inx
    bne clear_buffer_cycle
    rts

Next_frame:
    ldx #0
next_frame_cycle:
    lda $c000,x
    sta $3000,x

    lda $c100,x
    sta $3100,x

    lda $c200,x
    sta $3200,x

    lda $c300,x
    sta $3300,x

    lda $c400,x
    sta $3400,x

    lda $c500,x
    sta $3500,x

    lda $c600,x
    sta $3600,x

    lda $c700,x
    sta $3700,x
    inx
    bne next_frame_cycle

    ldx #0
color_cycle:
    lda $c800,x
    sta $D800+0*40+(4*40)+12,x

    lda $c810,x
    sta $D800+1*40+(4*40)+12,x

    lda $c820,x
    sta $D800+2*40+(4*40)+12,x

    lda $c830,x
    sta $D800+3*40+(4*40)+12,x

    lda $c840,x
    sta $D800+4*40+(4*40)+12,x

    lda $c850,x
    sta $D800+5*40+(4*40)+12,x

    lda $c860,x
    sta $D800+6*40+(4*40)+12,x

    lda $c870,x
    sta $D800+7*40+(4*40)+12,x

    lda $c880,x
    sta $D800+8*40+(4*40)+12,x

    lda $c890,x
    sta $D800+9*40+(4*40)+12,x

    lda $c8a0,x
    sta $D800+10*40+(4*40)+12,x

    lda $c8b0,x
    sta $D800+11*40+(4*40)+12,x

    lda $c8c0,x
    sta $D800+12*40+(4*40)+12,x

    lda $c8d0,x
    sta $D800+13*40+(4*40)+12,x

    lda $c8e0,x
    sta $D800+14*40+(4*40)+12,x

    lda $c8f0,x
    sta $D800+15*40+(4*40)+12,x

    inx
    cpx #$10
    bne color_cycle

    rts

crBlob_x:
    .byte 0
crBlob_rotate:
    .byte 0
CircleBlobs:
    ldx crBlob_rotate
    cpx #60
    bne circleBlobs_cycle
    ldx #0
    stx crBlob_rotate
circleBlobs_cycle:
    lda sintable,x
    sta crBlob_x
    lda sintable+5,x
    tay
    ldx crBlob_x
    lda #1
    jsr Draw_blob

    ldx crBlob_rotate
    lda sintable+5,x
    sta crBlob_x
    lda sintable+20,x
    tay
    ldx crBlob_x
    lda #1
    jsr Draw_blob


    ldx crBlob_rotate
    lda sintable+10,x
    sta crBlob_x
    lda sintable+20,x
    tay
    ldx crBlob_x
    lda #3
    jsr Draw_blob

    ldx crBlob_rotate
    lda sintable+15,x
    sta crBlob_x
    lda sintable+30,x
    tay
    ldx crBlob_x
    lda #3
    jsr Draw_blob


    ldx crBlob_rotate
    lda sintable+20,x
    sta crBlob_x
    lda sintable+30,x
    tay
    ldx crBlob_x
    lda #5
    jsr Draw_blob

    ldx crBlob_rotate
    lda sintable+25,x
    sta crBlob_x
    lda sintable+40,x
    tay
    ldx crBlob_x
    lda #5
    jsr Draw_blob

    ldx crBlob_rotate
    lda sintable+30,x
    sta crBlob_x
    lda sintable+35,x
    tay
    ldx crBlob_x
    lda #8
    jsr Draw_blob

    ldx crBlob_rotate
    lda sintable+35,x
    sta crBlob_x
    lda sintable+50,x
    tay
    ldx crBlob_x
    lda #7
    jsr Draw_blob

    ldx crBlob_rotate
    lda sintable+40,x
    sta crBlob_x
    lda sintable+50,x
    tay
    ldx crBlob_x
    lda #10
    jsr Draw_blob

    ldx crBlob_rotate
    lda sintable+45,x
    sta crBlob_x
    lda sintable+25,x
    tay
    ldx crBlob_x
    lda #4
    jsr Draw_blob

    ldx crBlob_rotate
    lda sintable+50,x
    sta crBlob_x
    lda sintable+20,x
    tay
    ldx crBlob_x
    lda #13
    jsr Draw_blob

    ldx crBlob_rotate
    lda sintable+55,x
    sta crBlob_x
    lda sintable+40,x
    tay
    ldx crBlob_x
    lda #14
    jsr Draw_blob

    ldx crBlob_rotate
    lda sintable+2,x
    sta crBlob_x
    lda sintable+52,x
    tay
    ldx crBlob_x
    lda #15
    jsr Draw_blob    

    rts

Main:
    jsr Charmap_start

    jsr Put_screen_chars

rotate_cycle:

    jsr Clear_buffer

    jsr CircleBlobs

    jsr Next_frame

    inc crBlob_rotate
    jmp rotate_cycle

    
    rts
