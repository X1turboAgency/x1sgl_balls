;---------------------------------------------------------------;
;	Copyright (c) 2019 macro_define.asm
;	This software is released under the MIT License.
;	http://opensource.org/licenses/mit-license.php
;---------------------------------------------------------------; 

;---------------------------------------------------------------; 
;	�}�N��
;---------------------------------------------------------------; 
OUT_L_ADD_H	MACRO
	out	(c),l
	add	a,h
	ld	b,a
ENDM

OUT_B_HL_ADD_E MACRO
	; Areg: �o�͗\��� Breg+1�̒l�������Ă���B
	; Ereg: �P���C�����p 08h
	inc hl		; MASK�������X�L�b�v

	outi
	add a,e
	ld	b,a
ENDM

OUT_R_HL_ADD_E MACRO
	; Areg: �o�͗\��� Breg+1�̒l�������Ă���B
	; Ereg: �P���C�����p 08h
	inc hl		; MASK�������X�L�b�v

	outi

	add a,e
	ld	b,a
ENDM

OUT_G_HL_ADD_E MACRO
	; Areg: �o�͗\��� Breg+1�̒l�������Ă���B
	; Ereg: �P���C�����p 08h
	inc hl		; MASK�������X�L�b�v

	outi

	add a,e
	ld	b,a
ENDM

OUT_B_HL MACRO
	; BRG - 0
	inc hl		; MASK�������X�L�b�v

	outi
ENDM

OUT_R_HL MACRO
	; BRG - 0
	inc hl		; MASK�������X�L�b�v

	outi
ENDM

OUT_G_HL MACRO
	; BRG - 0
	inc hl		; MASK�������X�L�b�v

	outi
ENDM

; RG�v���[���o�͗p
OUT_RG_HL_ADD_D_E	MACRO
	inc hl		; MASK�������X�L�b�v

	outi		; Red�v���[���o��

	add a,d
	ld b,a
;
	outi		; Green�v���[���o��

	add a,e		; ���̌� Red�v���[���ɖ߂��B
	ld b,a
;
ENDM

; RG�v���[���o�͗p
; Areg: VRAM(H)+1, Dreg: 040h
OUT_RG_HL_ADD_D	MACRO
	inc hl		; MASK�������X�L�b�v

	outi		; Red�v���[���o��
	add a,d
	ld b,a
;
	outi		; Green�v���[���o��
;
ENDM


; BG�v���[���o�͗p
; Areg: VRAM(H)+1, Dreg: 080h
OUT_BG_HL_ADD_D	MACRO
	inc hl		; MASK�������X�L�b�v

	outi		; Blue�v���[���o��

	add	a,d		; Red�v���[���X�L�b�v
	ld	b,a

	outi		; Green�v���[���o��

ENDM

; BR�v���[���o�͗p
; Areg: VRAM(H)+1, Dreg: 040h
OUT_BR_HL_ADD_D	MACRO
	inc hl		; MASK�������X�L�b�v

	outi		; Blue�v���[���o��

	add	a,d		; Red�v���[���ցB
	ld	b,a

	outi		; Red�v���[���o��

ENDM

; BR�v���[���o�͗p (�}�X�N��)
; Areg: VRAM(H)+1, Dreg: 040h
OUT_BR_HL_ADD_D_N	MACRO
	outi		; Blue�v���[���o��

	add	a,d		; Red�v���[���ցB
	ld	b,a

	outi		; Red�v���[���o��

ENDM

; 1�v���[���o�͗p (�}�X�N��)
; Areg: VRAM(H)+1
OUT_1_HL	MACRO
	outi		; 1�v���[���o��

ENDM

; BRG�v���[���o�͗p (�}�X�N�L��)
; Areg: VRAM(H)+1, Dreg: 040h
OUT_BRG_HL_ADD_D	MACRO
	inc		hl	; �}�X�N�X�L�b�v

	outi		; Blue�v���[���o��
	add	a,d		; Red�v���[���ցB
	ld	b,a

	outi		; Red�v���[���o��
	add	a,d		; Green�v���[���ցB
	ld	b,a

	outi		; Green�v���[���o�́B
ENDM



; out (c),l / add a,h ld b,h
OUT_L8_ADD_H MACRO
	ld hl,008ffh

	; VRAM Clear

	; 0
	out (c),l
	add a,h
	ld b,a

	; 1
	out (c),l
	add a,h
	ld b,a

	; 2
	out (c),l
	add a,h
	ld b,a

	; 3
	out (c),l
	add a,h
	ld b,a

	; 4
	out (c),l
	add a,h
	ld b,a

	; 5
	out (c),l
	add a,h
	ld b,a

	; 6
	out (c),l
	add a,h
	ld b,a

	; 7
	out (c),l

ENDM

; (IO:bc)��(IO:bc') ��8byte���s���B
OUT_BC_BCEX8	MACRO
	in	a,(c)
	inc	bc
	exx
	out	(c),a
	inc	bc
	exx

	in	a,(c)
	inc	bc
	exx
	out	(c),a
	inc	bc
	exx

	in	a,(c)
	inc	bc
	exx
	out	(c),a
	inc	bc
	exx

	in	a,(c)
	inc	bc
	exx
	out	(c),a
	inc	bc
	exx

	in	a,(c)
	inc	bc
	exx
	out	(c),a
	inc	bc
	exx

	in	a,(c)
	inc	bc
	exx
	out	(c),a
	inc	bc
	exx

	in	a,(c)
	inc	bc
	exx
	out	(c),a
	inc	bc
	exx

	in	a,(c)
	inc	bc
	exx
	out	(c),a
	inc	bc
	exx

ENDM

; (hl)��(IO:bc) ��8byte���s���B
OUT_HL_BC8 MACRO
	; 0
	inc	b
	outi
	inc	bc

	inc	b
	outi
	inc	bc

	inc	b
	outi
	inc	bc

	inc	b
	outi
	inc	bc

	; 4
	inc	b
	outi
	inc	bc

	inc	b
	outi
	inc	bc

	inc	b
	outi
	inc	bc

	inc	b
	outi
	inc	bc
ENDM

; ADD_BC_04828 BCreg�� 4828h�𑫂�
; BCreg��Green�v���[����7���C���ڂ��w���Ă���Ƃ��āA
; 04828h�𑫂�����1���C������Blue�v���[���Ɉړ�����B

ADD_BC_4828 MACRO
	; VRAM�����̒i�ցB
	ld a, 028h		; 7
	add a,c			; 4
	ld c,a			; 4
	ld a, 048h		; 7
	adc a,b			; 4
	ld b,a			; 4
ENDM

ADD_BC_C828 MACRO
	; VRAM�����̒i�ցB
	ld a, 028h		; 7
	add a,c			; 4
	ld c,a			; 4
	ld a, 0C8h		; 7
	adc a,b			; 4
	ld b,a			; 4
ENDM

ADD_BC_0028_AND_C7 MACRO
	; VRAM�����̒i�ցB
	ld a, 028h		; 7
	add a,c			; 4
	ld c,a			; 4

	ld a, 00h		; 7
	adc a,b			; 4
	and	07h
	ld b,a			; 4
ENDM

BLEND_RGB_HL_ADD_B_D MACRO
	ld e,(hl)	; mask
	inc hl

	; Blue.
	in a,(c)
	and e
	or (hl)
	out (c),a
	inc hl

	ld a,d
	add a,b
	ld b,a

	; Red.
	in a,(c)
	and e
	or (hl)
	out (c),a
	inc hl

	ld a,d
	add a,b
	ld b,a

	; Green.
	in a,(c)
	and e
	or (hl)
	out (c),a
	inc hl

ENDM

; B�̂�BLEND���āAR,G��AND�̂݁B
; Dreg�͎��̃v���[���ւ� 40h�������Ă���B
; Ereg: �}�X�N
BLEND_B_HL_ADD_B_D MACRO
	ld e,(hl)	; mask
	inc hl

	; Blue.
	in a,(c)
	and e
	or (hl)
	out (c),a
	inc hl

	ld a,d
	add a,b
	ld b,a

	; Red�� and�Ō���������̂�
	in a,(c)
	and e
	out (c),a

	ld a,d
	add a,b
	ld b,a

	; Green�� and�Ō���������̂�
	in a,(c)
	and e
	out (c),a

ENDM


; R�̂�BLEND���āAB,G��AND�̂݁B
; Dreg�͎��̃v���[���ւ� 40h�������Ă���B
; Ereg: �}�X�N
BLEND_R_HL_ADD_B_D MACRO
	ld e,(hl)	; mask
	inc hl

	; Blue�� and�Ō���������̂�
	in a,(c)
	and e
	out (c),a

	; Blue��Red
	ld a,d
	add a,b
	ld b,a

	; Red.
	in a,(c)
	and e
	or		(hl)
	out (c),a
	inc hl

	; Red��Green
	ld a,d
	add a,b
	ld b,a

	; Green�� and�Ō���������̂�
	in a,(c)
	and e
	out (c),a

ENDM

; G�̂�BLEND���āAB,R��AND�̂݁B
; Dreg�͎��̃v���[���ւ� 40h�������Ă���B
; Ereg: �}�X�N
BLEND_G_HL_ADD_B_D MACRO
	ld e,(hl)	; mask
	inc hl

	; Blue�� and�Ō���������̂�
	in a,(c)
	and e
	out (c),a

	; Blue��Red
	ld a,d
	add a,b
	ld b,a

	; Red�� and�Ō���������̂݁B
	in a,(c)
	and e
	out (c),a

	; Red��Green
	ld a,d
	add a,b
	ld b,a

	; Green blend.
	in a,(c)
	and e
	or		(hl)
	out (c),a
	inc hl
ENDM

; B,R��BLEND���āAG��AND�̂݁B
; Dreg: ���v���[���Z�o�p�� 040h�B
BLEND_BR_HL_ADD_B_D MACRO
	ld e,(hl)	; mask
	inc hl

	; Blue: Blend
	in	a,(c)
	and	e
	or	(hl)
	out	(c),a
	inc	hl

	ld	a,d	; Red�v���[����
	add	a,b
	ld	b,a

	; Red: Blend
	in	a,(c)
	and	e
	or	(hl)
	out	(c),a
	inc	hl

	ld a,d	; Green�v���[���ցB
	add a,b
	ld b,a

	; Green�� and�Ō����J����̂݁B
	in	a,(c)
	and	e
	out	(c),a

ENDM


; B,G��BLEND���āAR��AND�̂݁B
; Dreg: ���v���[���Z�o�p�� 040h�B
BLEND_BG_HL_ADD_B_D MACRO
	ld e,(hl)	; mask
	inc hl

	; Blue: Blend
	in	a,(c)
	and	e
	or	(hl)
	out	(c),a
	inc	hl

	ld	a,d	; Red�v���[����
	add	a,b
	ld	b,a

	; Red�� and�Ō����J����̂݁B
	in	a,(c)
	and	e
	out	(c),a

	ld a,d	; Green�v���[���ցB
	add a,b
	ld b,a

	; Green: Blend
	in a,(c)
	and e
	or (hl)
	out (c),a
	inc hl

ENDM

BLEND_RG_HL_ADD_B_D MACRO
	ld e,(hl)	; mask
	inc hl

;	; Blue �� and�Ō����󂯂�̂݁B
	in a,(c)
	and e
	out (c),a

	ld a,d	; Red�v���[���ցB
	add a,b
	ld b,a

	; Red.
	in a,(c)
	and e
	or (hl)
	out (c),a
	inc hl

	ld a,d	; Green�v���[���ցB
	add a,b
	ld b,a

	; Green.
	in a,(c)
	and e
	or (hl)
	out (c),a
	inc hl

ENDM


D_BLEND_RGB_HL_ADD_B_D MACRO
	ld e,(hl)	; mask
	inc hl

	; Blue.
	in a,(c)
	and e

	ld	a,0ffh
	and	e

;	or (hl)
	out (c),a
	inc hl

	ld a,d
	add a,b
	ld b,a

	; Red.
	in a,(c)
	and e
;	or (hl)
	out (c),a
	inc hl

	ld a,d
	add a,b
	ld b,a

	; Green.
	in a,(c)
	and e
;	or (hl)
	out (c),a
	inc hl

ENDM

; G��B�ɖ߂����Ɏg�p
ADD_B_80	MACRO
	ld	a,080h
	add a,b
	ld b,a
ENDM

; R��G�Ɏg�p
ADD_B_40	MACRO
	ld	a,040h
	add a,b
	ld b,a
ENDM

; BRG��B�ɖ߂��čX��1���C�����B
ADD_B_88	MACRO
	ld	a,088h
	add a,b
	ld b,a
ENDM

; B ���X��1���C�����B(Dreg �� 08h�������Ă���)
ADD_B_D		MACRO
	ld	a,d
	add	a,b
	ld	b,a
ENDM


; Breg �v���[���𑫂��B
; Areg��Breg�Ɠ����l�������Ă��āADreg��040h�������Ă���B
ADD_A_D_B	MACRO
	add	a,d
	ld	b,a
ENDM

; ����: B�v���[���ɖ߂��čX��1���C�����B
; Areg: VRAM(G�v���[��)+1, Ereg: 088h
ADD_B_E MACRO
	add	a,e
	ld	b,a
ENDM

; Areg��4bit���㉺����ւ���B
RRCA4	MACRO
	rrca
	rrca
	rrca
	rrca
ENDM

; �W���C�p�b�h (��)
BIT_A_0_KEY_UP MACRO
	bit	0,a
ENDM

; �W���C�p�b�h (��)
BIT_A_1_KEY_DOWN MACRO
	bit	1,a
ENDM

; �W���C�p�b�h (��)
BIT_A_2_KEY_LEFT MACRO
	bit	2,a
ENDM

; �W���C�p�b�h (�E)
BIT_A_3_KEY_RIGHT MACRO
	bit	3,a
ENDM

; �W���C�p�b�h (�g���K1)
BIT_A_5_KEY_TRG1 MACRO
	bit	5,a
ENDM

; �W���C�p�b�h (�g���K2)
BIT_A_6_KEY_TRG2 MACRO
	bit	6,a
ENDM

; �A�i���O�p���b�g�f�[�^�ݒ�
; PALET_DATA_CDE [�p���b�g�ԍ�(0-4095)], [GRB] (�e4bit)
; CDEreg �ɃZ�b�g����B

PALET_DATA_CDE	MACRO
	ld		c, %1>>4
	ld		de,  ( ( ((%1 & 0fh ) << 4) | (%2 & 0fh) ) << 8) | (%2 >> 4)
ENDM

END

