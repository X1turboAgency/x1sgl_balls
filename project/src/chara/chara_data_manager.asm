;---------------------------------------------------------------;
;	Copyright (c) 2019 chara_data_manager.asm
;	This software is released under the MIT License.
;	http://opensource.org/licenses/mit-license.php
;---------------------------------------------------------------; 
;----

; �L�����N�^�p�^�[�� (2,4�c)�̃f�[�^�A�h���X�e�[�u�� (0�͎g�p���Ȃ�)
; �p�^�[����ނ�128���
; �f�[�^�I�t�Z�b�g(Xoffset)��0�`7 ��8���


; X���� Offset 0
;�@2,3�@�L�����N�^�p�^�[��1�@�f�[�^�A�h���X(L,H) �c 127�p�^�[����
; X���� Offset 1�`7
;�@2,3�@�L�����N�^�p�^�[��1�@�f�[�^�A�h���X(L,H) �c 127�p�^�[����

; PCG�f�[�^�̈�(6KB)�͓]����͎g����̂ŋ��p����B
; �������̂��߂�256byte �A���C�����g�ɂ���B
;;chara_data_table	equ		pcg_data

align 256

chara_data_table:
	ds X_OFS_NUM*256

; �e�p�^�[�����Ƃ�Pivot�e�[�u�� (���т͍������̂��� PivotX, PivotY�̏�)
; X����(�������Ƃ��āB�܂�2�̔{��): -80�`+7f Y����: -80�`+7f
; �������̂��߂�256byte �A���C�����g�ɂ���B
chara_pivot_table:
	ds	256

; �e�p�^�[�����Ƃ̊i�[�������o���N�e�[�u��
; 2byte���ƂɎg�p����Ă��邪��0byte�̂ݎg�p���Ă���B
; �������̂��߂�256byte �A���C�����g�ɂ���B
chara_bank_table:
	ds	256

init_chara_data_manager:
	ld hl, chara_data_table
	ld bc, X_OFS_NUM*256
	call clear_mem

	ld hl, chara_pivot_table
	ld bc, 256
	call clear_mem

	ld	hl, chara_bank_table
	ld	bc, 256
	ld	a, BANK_MAIN
	call	fill_mem

	; �L�����p�^�[�� Ball(B) 00
	ld	c, PAT_BALL_B00
	ld	hl, ball_p0_c1
	call cdm_set_data8_bank_main

	; �L�����p�^�[�� Ball(B) 01
	ld	c, PAT_BALL_B01
	ld	hl, ball_p1_c1
	call cdm_set_data8_bank_main

	; �L�����p�^�[�� Ball(BR) 00
	ld	c, PAT_BALL2_BR00
	ld	hl, ball2_p0_c2
	call cdm_set_data8_bank_main

	; �L�����p�^�[�� Ball(BR) 01
	ld	c, PAT_BALL2_BR01
	ld	hl, ball2_p1_c2
	call cdm_set_data8_bank_main

	; �L�����p�^�[�� Ball(BRG) 00
	ld	c, PAT_BALL3_BRG00
	ld	hl, ball3_p0_c3
	call cdm_set_data8_bank_main

	; �L�����p�^�[�� Ball(BRG) 01
	ld	c, PAT_BALL3_BRG01
	ld	hl, ball3_p1_c3
	call cdm_set_data8_bank_main

	ret


; Pattern��XOffset�ɑΉ������L�����N�^�f�[�^��Ԃ��B
;	Lreg: Pattern�ԍ� (2,4�c254)
;	Areg: Xpos Offset(0-7)
; �߂�l: DEreg: data adrs.
;
; �j�󂵂Ȃ�Reg: BCreg
cdm_get_data:
;( pat*8 + (x&7) )*2
	and 07h
	ld h,a

	ld de,chara_data_table
	add hl,de

	ld e,(hl)
	inc hl
	ld d,(hl)

	ret


; �L�����f�[�^�e�[�u����^���āA�e�p�^�[���̃L�����f�[�^��ݒ肷��B
; ���킹�ăL�����N�^��Pivot�e�[�u�����ݒ肷��B
; Pattern , XOffset
;	Creg: Pattern(2,4�c254)
;	HLreg: �L�����f�[�^�e�[�u��

; Bank Main�p
cdm_set_data8_bank_main:
	ld	de, 0000h
csdbm_1:
	ld	( cdm_adrs + 1 ), de

cdm_set_data8:
	; �i�[�o���N�������ݒ�
	ld	e,c
	ld	d, chara_bank_table >> 8
	ld	(de),a

	di

	ld	a,e	; �L�����p�^�[���ԍ���Areg�ɕێ�

	ld	d, chara_pivot_table >> 8

	; ldi���߂� BCreg�̓f�N�������g�����B
	ldi		; PivotX (DE++)��(HL++)
	ldi		; PivotY (DE++)��(HL++)

	ld	b, (hl)	; �f�[�^��
	inc	hl

	ld	c,a	; �Ă� Creg�ɃL�����p�^�[���l�𕜋A�B

	xor	a
csd8_1:
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl

	push	hl

	; ���ȏ�����
cdm_adrs:
	ld	hl, 0000h

	add	hl,de
	ex	de,hl

	; X Offset�ʒu�ɑΉ������L�����f�[�^��ݒ肷��B
	;	Creg: Pattern(2,4�c254)
	;	Areg: X Offset(0-7)
	;	DEreg: �L�����f�[�^

	ld	l,c
	and 07h
	ld h,a

	push de
	ld de,chara_data_table
	add hl,de
	pop de

	ld (hl),e
	inc hl
	ld (hl),d

	pop hl

	inc	a

	djnz	csd8_1

	ei

	ret


; �L�����N�^�f�[�^�e�[�u����Ԃ��B
;	Lreg: Pattern(2,4�c254)
;	Areg: X Offset(0-7)
;
; �߂�l: HLreg - �e�[�u���A�h���XIndex.
cdm_calc_pattern_adrs:
	and 07h
	ld h,a
	ld de,chara_data_table
	add hl,de

	ret


;---------------------------------------------------------------; 

	END

