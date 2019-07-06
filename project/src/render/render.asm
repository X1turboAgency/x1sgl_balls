;---------------------------------------------------------------;
;	Copyright (c) 2019 render.asm
;	This software is released under the MIT License.
;	http://opensource.org/licenses/mit-license.php
;---------------------------------------------------------------; 

;---------------------------------------------------------------;
; BRG 1���C���`��
; ����
;	HLreg: �L�����f�[�^
;	BCreg: �`��VRAM�A�h���X
;	Ereg: �r�b�g���C���f�[�^
;---------------------------------------------------------------;
rc_image_01:
	ld	d,b		; Dreg��Breg���o�b�t�@�B

	ld	a,b
	or	BITLINE_MASK
	ld	b,a

	ld	a,(bc)
	and	e
	jp	nz, rc_blend_01

	ld	a,(bc)
	or	e
	ld	(bc),a

	ld	b,d		; Breg�ɕ��A�B

; wirte
	ld d, 040h

	inc b
	ld a,b

	OUT_BRG_HL_ADD_D

	ret

rc_blend_01:
	ld	a,(bc)
	or	e
	ld	(bc),a

	ld	b,d		; Breg�ɕ��A�B
	ld	d, 40h

	jp	brg_blend_01

;---------------------------------------------------------------;
; BRG 2���C���`��
; ����
;	HLreg: �L�����f�[�^
;	BCreg: �`��VRAM�A�h���X
;	Ereg: �r�b�g���C���f�[�^
;---------------------------------------------------------------;
rc_image_02:
	ld	d,b		; Dreg��Breg���o�b�t�@�B

	ld	a,b
	or	BITLINE_MASK
	ld	b,a

	ld	a,(bc)
	and	e
	jp	nz, rc_blend_02

	ld	a,(bc)
	or	e
	ld	(bc),a

	ld	b,d		; Breg�ɕ��A�B

; wirte
	ld de, 04088h

	inc b
	ld a,b

	jp	brg_write_02

rc_blend_02:
	ld	a,(bc)
	or	e
	ld	(bc),a

	ld	b,d		; Breg�ɕ��A�B
	ld	d, 40h

	jp	brg_blend_02


;---------------------------------------------------------------;
; 3���C���`��
; ����
;	HLreg: �L�����f�[�^
;	BCreg: �`��VRAM�A�h���X
;	Ereg: �r�b�g���C���f�[�^
;---------------------------------------------------------------;
rc_image_03:

	ld	d,b		; Dreg��Breg���o�b�t�@�B

	ld	a,b
	or	BITLINE_MASK
	ld	b,a

	ld	a,(bc)
	and	e
	jp	nz, rc_blend_03

	ld	a,(bc)
	or	e
	ld	(bc),a

	ld	b,d		; Breg�ɕ��A�B

; wirte
	ld de, 04088h

	inc b
	ld a,b

	jp	brg_write_03

rc_blend_03:
	ld	a,(bc)
	or	e
	ld	(bc),a

	ld	b,d		; Breg�ɕ��A�B
	ld	d, 40h

	jp	brg_blend_03


;---------------------------------------------------------------;
; 4���C���`��
; ����
;	HLreg: �L�����f�[�^
;	BCreg: �`��VRAM�A�h���X
;	Ereg: �r�b�g���C���f�[�^
;---------------------------------------------------------------;
rc_image_04:
	ld	d,b		; Dreg��Breg���o�b�t�@�B

	ld	a,b
	or	BITLINE_MASK
	ld	b,a

	ld	a,(bc)
	and	e
	jp	nz, rc_blend_04

	ld	a,(bc)
	or	e
	ld	(bc),a

	ld	b,d		; Breg�ɕ��A�B

i04_write_1:

; wirte
	ld	de, 04088h
	inc b
	ld a,b

	jp	brg_write_04

rc_blend_04:
	ld	a,(bc)
	or	e
	ld	(bc),a

	ld	b,d		; Breg�ɕ��A�B
	ld	d, 40h

	jp	brg_blend_04


;---------------------------------------------------------------;
; 5���C���`��
; ����
;	HLreg: �L�����f�[�^
;	BCreg: �`��VRAM�A�h���X
;	Ereg: �r�b�g���C���f�[�^
;---------------------------------------------------------------;
rc_image_05:
	ld	d,b		; Dreg��Breg���o�b�t�@�B

	ld	a,b
	or	BITLINE_MASK
	ld	b,a

	ld	a,(bc)
	and	e
	jp	nz, rc_blend_05

	ld	a,(bc)
	or	e
	ld	(bc),a

	ld	b,d		; Breg�ɕ��A�B

; wirte
	ld de, 04088h

	inc b
	ld a,b

	jp	brg_write_05


rc_blend_05:
	ld	a,(bc)
	or	e
	ld	(bc),a

	ld	b,d		; Breg�ɕ��A�B
	ld	d, 40h

	jp	brg_blend_05

;---------------------------------------------------------------;
; 6���C���`��
; ����
;	HLreg: �L�����f�[�^
;	BCreg: �`��VRAM�A�h���X
;	Ereg: �r�b�g���C���f�[�^
;---------------------------------------------------------------;
rc_image_06:
	ld	d,b		; Dreg��Breg���o�b�t�@�B

	ld	a,b
	or	BITLINE_MASK
	ld	b,a

	ld	a,(bc)
	and	e
	jp	nz, rc_blend_06

	ld	a,(bc)
	or	e
	ld	(bc),a

	ld	b,d		; Breg�ɕ��A�B

; wirte
	ld de, 04088h

	inc b
	ld a,b

	jp	brg_write_06

rc_blend_06:
	ld	a,(bc)
	or	e
	ld	(bc),a

	ld	b,d		; Breg�ɕ��A�B
	ld	d, 40h

	jp	brg_blend_06


;---------------------------------------------------------------;
; 7���C���`��
; ����
;	HLreg: �L�����f�[�^
;	BCreg: �`��VRAM�A�h���X
;	Ereg: �r�b�g���C���f�[�^
;---------------------------------------------------------------;
rc_image_07:
	ld	d,b		; Dreg��Breg���o�b�t�@�B

	ld	a,b
	or	BITLINE_MASK
	ld	b,a

	ld	a,(bc)
	and	e
	jp	nz, rc_blend_07

	ld	a,(bc)
	or	e
	ld	(bc),a

	ld	b,d		; Breg�ɕ��A�B

; wirte
	ld de, 04088h

	inc b
	ld a,b

	jp	brg_write_07

rc_blend_07:
	ld	a,(bc)
	or	e
	ld	(bc),a

	ld	b,d		; Breg�ɕ��A�B
	ld	d, 40h

	jp	brg_blend_07


;---------------------------------------------------------------;
; 8���C���`��
; ����
;	HLreg: �L�����f�[�^
;	BCreg: �`��VRAM�A�h���X
;---------------------------------------------------------------;
rc_image_08:
	; VRAM Adrs(BCreg)����BitLineBuff�����߂�B
	; BitLineBuff�� 0f8xx�ɂ���̂ŁAf800�� OR����Ƌ��܂�B

; Ereg: �r�b�g���C���f�[�^

	ld	d,b		; Dreg��Breg���o�b�t�@�B

	ld	a,b
	or	BITLINE_MASK
	ld	b,a

	ld	a,(bc)
	or	a
	jp	nz, rc_blend_08

	ld	a,0ffh
	ld	(bc),a

	ld	b,d		; Breg�ɕ��A�B


rc_image_08_n:

; wirte

	ld	de, 04088h
	inc b
	ld a,b

	OUT_BRG_HL_ADD_D
	ADD_B_E
brg_write_07:
	OUT_BRG_HL_ADD_D
	ADD_B_E
brg_write_06:
	OUT_BRG_HL_ADD_D
	ADD_B_E
brg_write_05:
	OUT_BRG_HL_ADD_D
	ADD_B_E
brg_write_04:
	OUT_BRG_HL_ADD_D
	ADD_B_E
brg_write_03:
	OUT_BRG_HL_ADD_D
	ADD_B_E
brg_write_02:
	OUT_BRG_HL_ADD_D
	ADD_B_E
brg_write_01:
	OUT_BRG_HL_ADD_D

	ret


rc_blend_08:
	ld	a,0ffh
	ld	(bc),a

	ld	b,d		; Breg�ɕ��A�B

	ld	d, 40h

	BLEND_RGB_HL_ADD_B_D
	ADD_B_88
brg_blend_07:
	BLEND_RGB_HL_ADD_B_D
	ADD_B_88
brg_blend_06:
	BLEND_RGB_HL_ADD_B_D
	ADD_B_88
brg_blend_05:
	BLEND_RGB_HL_ADD_B_D
	ADD_B_88
brg_blend_04:
	BLEND_RGB_HL_ADD_B_D
	ADD_B_88
brg_blend_03:
	BLEND_RGB_HL_ADD_B_D
	ADD_B_88
brg_blend_02:
	BLEND_RGB_HL_ADD_B_D
	ADD_B_88
brg_blend_01:
	BLEND_RGB_HL_ADD_B_D

	ret


;---------------------------------------------------------------;
; �v���[�� B 1���C���`��
; ����
;	HLreg: �L�����f�[�^
;	BCreg: �`��VRAM�A�h���X
;	Ereg: �r�b�g���C���f�[�^
;---------------------------------------------------------------;
rc_image_b1:
	ld	d,b		; Dreg��Breg���o�b�t�@�B

	ld	a,b
	or	BITLINE_MASK
	ld	b,a

	ld	a,(bc)
	and	e
	jp	nz, rc_blend_b1

	ld	a,(bc)
	or	e
	ld	(bc),a

	ld	b,d		; Breg�ɕ��A�B

; wirte
	inc b
;;	ld a,b

	OUT_B_HL
	ADD_B_80	; �������̂��� B��G

	ret

rc_blend_b1:
	ld	a,(bc)
	or	e
	ld	(bc),a

	ld	b,d		; Breg�ɕ��A�B
	ld	d, 040h

	BLEND_B_HL_ADD_B_D

	ret

;---------------------------------------------------------------;
; �v���[�� B 2���C���`��
; ����
;	HLreg: �L�����f�[�^
;	BCreg: �`��VRAM�A�h���X
;	Ereg: �r�b�g���C���f�[�^
;---------------------------------------------------------------;
rc_image_b2:
	ld	d,b		; Dreg��Breg���o�b�t�@�B

	ld	a,b
	or	BITLINE_MASK
	ld	b,a

	ld	a,(bc)
	and	e
	jp	nz, rc_blend_b2

	ld	a,(bc)
	or	e
	ld	(bc),a

	ld	b,d		; Breg�ɕ��A�B

; wirte
	ld	e, 008h

	inc b
	ld a,b

	OUT_B_HL_ADD_E
	OUT_B_HL

	ADD_B_80	; �������̂��� B��G

	ret

rc_blend_b2:
	ld	a,(bc)
	or	e
	ld	(bc),a

	ld	b,d		; Breg�ɕ��A�B
	ld	d, 40h

	jp	b_blend_02

;---------------------------------------------------------------;
; �v���[�� B 3���C���`��
; ����
;	HLreg: �L�����f�[�^
;	BCreg: �`��VRAM�A�h���X
;	Ereg: �r�b�g���C���f�[�^
;---------------------------------------------------------------;
rc_image_b3:
	ld	d,b		; Dreg��Breg���o�b�t�@�B

	ld	a,b
	or	BITLINE_MASK
	ld	b,a

	ld	a,(bc)
	and	e
	jp	nz, rc_blend_b3

	ld	a,(bc)
	or	e
	ld	(bc),a

	ld	b,d		; Breg�ɕ��A�B

; wirte
	ld	e, 008h

	inc b
	ld a,b

	OUT_B_HL_ADD_E
	OUT_B_HL_ADD_E
	OUT_B_HL

	ADD_B_80	; �������̂��� B��G

	ret

rc_blend_b3:
	ld	a,(bc)
	or	e
	ld	(bc),a

	ld	b,d		; Breg�ɕ��A�B
	ld	d, 40h

	jp	b_blend_03


;---------------------------------------------------------------;
; �v���[�� B 4���C���`��
; ����
;	HLreg: �L�����f�[�^
;	BCreg: �`��VRAM�A�h���X
;	Ereg: �r�b�g���C���f�[�^
;---------------------------------------------------------------;
rc_image_b4:
	ld	d,b		; Dreg��Breg���o�b�t�@�B

	ld	a,b
	or	BITLINE_MASK
	ld	b,a

	ld	a,(bc)
	and	e
	jp	nz, rc_blend_b4

	ld	a,(bc)
	or	e
	ld	(bc),a

	ld	b,d		; Breg�ɕ��A�B

; wirte
	ld	e, 008h

	inc b
	ld a,b

;	dec	b
;	ld	a,08h*3+080h
;	add	a,b
;	ld	b,a
;	ret

	OUT_B_HL_ADD_E
	OUT_B_HL_ADD_E
	OUT_B_HL_ADD_E
	OUT_B_HL

	ADD_B_80	; �������̂��� B��G

	ret

rc_blend_b4:
	ld	a,(bc)
	or	e
	ld	(bc),a

	ld	b,d		; Breg�ɕ��A�B
	ld	d, 40h

	jp	b_blend_04

;---------------------------------------------------------------;
; �v���[�� B 5���C���`��
; ����
;	HLreg: �L�����f�[�^
;	BCreg: �`��VRAM�A�h���X
;	Ereg: �r�b�g���C���f�[�^
;---------------------------------------------------------------;
rc_image_b5:
	ld	d,b		; Dreg��Breg���o�b�t�@�B

	ld	a,b
	or	BITLINE_MASK
	ld	b,a

	ld	a,(bc)
	and	e
	jp	nz, rc_blend_b5

	ld	a,(bc)
	or	e
	ld	(bc),a

	ld	b,d		; Breg�ɕ��A�B

; wirte
	ld	e, 008h

	inc b
	ld a,b

	OUT_B_HL_ADD_E
	OUT_B_HL_ADD_E
	OUT_B_HL_ADD_E
	OUT_B_HL_ADD_E
	OUT_B_HL

	ADD_B_80	; �������̂��� B��G

	ret

rc_blend_b5:
	ld	a,(bc)
	or	e
	ld	(bc),a

	ld	b,d		; Breg�ɕ��A�B
	ld	d, 40h

	jp	b_blend_05

;---------------------------------------------------------------;
; �v���[�� B 6���C���`��
; ����
;	HLreg: �L�����f�[�^
;	BCreg: �`��VRAM�A�h���X
;	Ereg: �r�b�g���C���f�[�^
;---------------------------------------------------------------;
rc_image_b6:
	ld	d,b		; Dreg��Breg���o�b�t�@�B

	ld	a,b
	or	BITLINE_MASK
	ld	b,a

	ld	a,(bc)
	and	e
	jp	nz, rc_blend_b6

	ld	a,(bc)
	or	e
	ld	(bc),a

	ld	b,d		; Breg�ɕ��A�B

; wirte
	ld	e, 008h

	inc b
	ld a,b

	OUT_B_HL_ADD_E
	OUT_B_HL_ADD_E
	OUT_B_HL_ADD_E
	OUT_B_HL_ADD_E
	OUT_B_HL_ADD_E
	OUT_B_HL

	ADD_B_80	; �������̂��� B��G

	ret

rc_blend_b6:
	ld	a,(bc)
	or	e
	ld	(bc),a

	ld	b,d		; Breg�ɕ��A�B
	ld	d, 40h

	jp	b_blend_06

;---------------------------------------------------------------;
; �v���[�� B 7���C���`��
; ����
;	HLreg: �L�����f�[�^
;	BCreg: �`��VRAM�A�h���X
;	Ereg: �r�b�g���C���f�[�^
;---------------------------------------------------------------;
rc_image_b7:
	ld	d,b		; Dreg��Breg���o�b�t�@�B

	ld	a,b
	or	BITLINE_MASK
	ld	b,a

	ld	a,(bc)
	and	e
	jp	nz, rc_blend_b7

	ld	a,(bc)
	or	e
	ld	(bc),a

	ld	b,d		; Breg�ɕ��A�B

; wirte
	ld	e, 008h

	inc b
	ld a,b

	OUT_B_HL_ADD_E
	OUT_B_HL_ADD_E
	OUT_B_HL_ADD_E
	OUT_B_HL_ADD_E
	OUT_B_HL_ADD_E
	OUT_B_HL_ADD_E
	OUT_B_HL

	ADD_B_80	; �������̂��� B��G

	ret

rc_blend_b7:
	ld	a,(bc)
	or	e
	ld	(bc),a

	ld	b,d		; Breg�ɕ��A�B
	ld	d, 40h

	jp	b_blend_07


;---------------------------------------------------------------;
; �v���[��: B 8���C���`��
; ����
;	HLreg: �L�����f�[�^
;	BCreg: �`��VRAM�A�h���X
;---------------------------------------------------------------;
rc_image_b8:
	; VRAM Adrs(BCreg)����BitLineBuff�����߂�B
	; BitLineBuff�� 0f8xx�ɂ���̂ŁAf800�� OR����Ƌ��܂�B

; Ereg: �r�b�g���C���f�[�^

	ld	d,b		; Dreg��Breg���o�b�t�@�B

	ld	a,b
	or	BITLINE_MASK
	ld	b,a

	ld	a,(bc)
	or	a
	jp	nz,	rc_blend_b8

	ld	a,0ffh
	ld	(bc),a

	ld	b,d		; Breg�ɕ��A�B

rc_image_b08_n:
; wirte
	ld	e, 008h

	inc b
	ld a,b

;	dec	b
;	ld	a,08h*7+80h
;	add	a,b
;	ld	b,a
;	ret


	OUT_B_HL_ADD_E
	OUT_B_HL_ADD_E
	OUT_B_HL_ADD_E
	OUT_B_HL_ADD_E
	OUT_B_HL_ADD_E
	OUT_B_HL_ADD_E
	OUT_B_HL_ADD_E
	OUT_B_HL

	ADD_B_80	; �������̂��� B��G

	ret

rc_blend_b8:
	ld	a,0ffh
	ld	(bc),a

	ld	b,d		; Breg�ɕ��A�B
	ld	d, 40h

b_blend_08:
	BLEND_B_HL_ADD_B_D
	ADD_B_88
b_blend_07:
	BLEND_B_HL_ADD_B_D
	ADD_B_88
b_blend_06:
	BLEND_B_HL_ADD_B_D
	ADD_B_88
b_blend_05:
	BLEND_B_HL_ADD_B_D
	ADD_B_88
b_blend_04:
	BLEND_B_HL_ADD_B_D
	ADD_B_88
b_blend_03:
	BLEND_B_HL_ADD_B_D
	ADD_B_88
b_blend_02:
	BLEND_B_HL_ADD_B_D
	ADD_B_88
b_blend_01:
	BLEND_B_HL_ADD_B_D

	ret



;---------------------------------------------------------------;
; 1���C������
; ����
;	BCreg: �`��VRAM�A�h���X
;	Ereg: BitLine�f�[�^ ���Z�b�g�p�� �w��r�b�g�𔽓]�������́B
;	Hreg: ���i���Z�p 08h
;	Lreg: VRAM�ւ̏o�͒l 00h
;---------------------------------------------------------------;
clear_image_01:
	; VRAM Adrs(BCreg)����BitLineBuff�����߂�B
	; BitLineBuff�� 0f8xx�ɂ���̂ŁAf800�� OR����Ƌ��܂�B

; Ereg: �r�b�g���C���f�[�^

	ld	d,b		; Dreg��Breg���o�b�t�@�B

	; ��������K�v�����邩�ǂ���BitLine�o�b�t�@���`�F�b�N�B
	ld	a,b
	or	BITLINE_MASK
	ld	b,a

	ld	a,(bc)
	and	e
	ld	(bc),a

	ld	b,d		; Breg�ɕ��A�B

	out	(c),l		; 1

	ret

;---------------------------------------------------------------;
; 2���C������
; ����
;	BCreg: �`��VRAM�A�h���X
;	Ereg: BitLine�f�[�^ ���Z�b�g�p�� �w��r�b�g�𔽓]�������́B
;	Hreg: ���i���Z�p 08h
;	Lreg: VRAM�ւ̏o�͒l 00h
;---------------------------------------------------------------;
clear_image_02:
	; VRAM Adrs(BCreg)����BitLineBuff�����߂�B
	; BitLineBuff�� 0f8xx�ɂ���̂ŁAf800�� OR����Ƌ��܂�B

; Ereg: �r�b�g���C���f�[�^

	ld	d,b		; Dreg��Breg���o�b�t�@�B

	; ��������K�v�����邩�ǂ���BitLine�o�b�t�@���`�F�b�N�B
	ld	a,b
	or	BITLINE_MASK
	ld	b,a

	; BitLine�o�b�t�@�Ƀ}�X�N������0���������ށB
	ld	a,(bc)
	and	e
	ld	(bc),a

	ld	b,d		; Breg�ɕ��A�B
	ld	a,b		; VRAM�v�Z�p��Areg�ɂ�Breg�����Ă����B

	; ���Z�p�ɐݒ�
	ld	h,08h

	OUT_L_ADD_H		; 0
	out	(c),l		; 1

	ret

;---------------------------------------------------------------;
; 3���C������
; ����
;	BCreg: �`��VRAM�A�h���X
;	Ereg: BitLine�f�[�^ ���Z�b�g�p�� �w��r�b�g�𔽓]�������́B
;	Hreg: ���i���Z�p 08h
;	Lreg: VRAM�ւ̏o�͒l 00h
;---------------------------------------------------------------;
clear_image_03:
	; VRAM Adrs(BCreg)����BitLineBuff�����߂�B
	; BitLineBuff�� 0f8xx�ɂ���̂ŁAf800�� OR����Ƌ��܂�B

; Ereg: �r�b�g���C���f�[�^

	ld	d,b		; Dreg��Breg���o�b�t�@�B

	; ��������K�v�����邩�ǂ���BitLine�o�b�t�@���`�F�b�N�B
	ld	a,b
	or	BITLINE_MASK
	ld	b,a

	; BitLine�o�b�t�@�Ƀ}�X�N������0���������ށB
	ld	a,(bc)
	and	e
	ld	(bc),a

	ld	b,d		; Breg�ɕ��A�B
	ld	a,b		; VRAM�v�Z�p��Areg�ɂ�Breg�����Ă����B

	; ���Z�p�ɐݒ�
	ld	h,08h

	OUT_L_ADD_H		; 0
	OUT_L_ADD_H		; 1
	out	(c),l		; 2

	ret

;---------------------------------------------------------------;
; 4���C������
; ����
;	BCreg: �`��VRAM�A�h���X
;	Dreg: BitLine�f�[�^
;	Ereg: BitLine�}�X�N�f�[�^ (Dreg �𔽓]��������)
;	Hreg: ���i���Z�p 08h
;	Lreg: VRAM�ւ̏o�͒l 00h
; Hreg��j�󂷂�ꍇ������B
;---------------------------------------------------------------;
clear_image_04:
	; VRAM Adrs(BCreg)����BitLineBuff�����߂�B
	; BitLineBuff�� 0f8xx�ɂ���̂ŁAf800�� OR����Ƌ��܂�B

; Ereg: �r�b�g���C���f�[�^

	ld	h,b		; Hreg��Breg���o�b�t�@�B

	; ��������K�v�����邩�ǂ���BitLine�o�b�t�@���`�F�b�N�B
	ld	a,b
	or	BITLINE_MASK
	ld	b,a

	ld	a,(bc)
	and	d
	ret	z

	; BitLine�o�b�t�@�Ƀ}�X�N������0���������ށB
	ld	a,(bc)
	and	e
	ld	(bc),a

	ld	b,h		; Breg�ɕ��A�B
	ld	a,b		; VRAM�v�Z�p��Areg�ɂ�Breg�����Ă����B

	; ���Z�p�ɐݒ�
	ld	h,08h

	OUT_L_ADD_H		; 0
	OUT_L_ADD_H		; 1
	OUT_L_ADD_H		; 2
	out	(c),l		; 3

	ret

;---------------------------------------------------------------;
; 5���C������
; ����
;	BCreg: �`��VRAM�A�h���X
;	Dreg: BitLine�f�[�^
;	Ereg: BitLine�}�X�N�f�[�^ (Dreg �𔽓]��������)
;	Hreg: ���i���Z�p 08h
;	Lreg: VRAM�ւ̏o�͒l 00h
; Hreg��j�󂷂�ꍇ������B
;---------------------------------------------------------------;
clear_image_05:
	; VRAM Adrs(BCreg)����BitLineBuff�����߂�B
	; BitLineBuff�� 0f8xx�ɂ���̂ŁAf800�� OR����Ƌ��܂�B

; Ereg: �r�b�g���C���f�[�^

	ld	h,b		; Hreg��Breg���o�b�t�@�B

	; ��������K�v�����邩�ǂ���BitLine�o�b�t�@���`�F�b�N�B
	ld	a,b
	or	BITLINE_MASK
	ld	b,a

	ld	a,(bc)
	and	d
	ret	z

	; BitLine�o�b�t�@�Ƀ}�X�N������0���������ށB
	ld	a,(bc)
	and	e
	ld	(bc),a

	ld	b,h		; Breg�ɕ��A�B
	ld	a,b		; VRAM�v�Z�p��Areg�ɂ�Breg�����Ă����B

	; ���Z�p�ɐݒ�
	ld	h,08h

	OUT_L_ADD_H		; 0
	OUT_L_ADD_H		; 1
	OUT_L_ADD_H		; 2
	OUT_L_ADD_H		; 3
	out	(c),l		; 4

	ret

;---------------------------------------------------------------;
; 6���C������
; ����
;	BCreg: �`��VRAM�A�h���X
;	Dreg: BitLine�f�[�^
;	Ereg: BitLine�}�X�N�f�[�^ (Dreg �𔽓]��������)
;	Hreg: ���i���Z�p 08h
;	Lreg: VRAM�ւ̏o�͒l 00h
; Hreg��j�󂷂�ꍇ������B
;---------------------------------------------------------------;
clear_image_06:
	; VRAM Adrs(BCreg)����BitLineBuff�����߂�B
	; BitLineBuff�� 0f8xx�ɂ���̂ŁAf800�� OR����Ƌ��܂�B

; Ereg: �r�b�g���C���f�[�^

	ld	h,b		; Hreg��Breg���o�b�t�@�B

	; ��������K�v�����邩�ǂ���BitLine�o�b�t�@���`�F�b�N�B
	ld	a,b
	or	BITLINE_MASK
	ld	b,a

	ld	a,(bc)
	and	d
	ret	z

	; BitLine�o�b�t�@�Ƀ}�X�N������0���������ށB
	ld	a,(bc)
	and	e
	ld	(bc),a

	ld	b,h		; Breg�ɕ��A�B
	ld	a,b		; VRAM�v�Z�p��Areg�ɂ�Breg�����Ă����B

	; ���Z�p�ɐݒ�
	ld	h,08h

	OUT_L_ADD_H		; 0
	OUT_L_ADD_H		; 1
	OUT_L_ADD_H		; 2
	OUT_L_ADD_H		; 3
	OUT_L_ADD_H		; 4
	out	(c),l		; 5

	ret


;---------------------------------------------------------------;
; 7���C������
; ����
;	BCreg: �`��VRAM�A�h���X
;	Dreg: BitLine�f�[�^
;	Ereg: BitLine�}�X�N�f�[�^ (Dreg �𔽓]��������)
;	Hreg: ���i���Z�p 08h
;	Lreg: VRAM�ւ̏o�͒l 00h
; Hreg��j�󂷂�ꍇ������B
;---------------------------------------------------------------;
clear_image_07:
	; VRAM Adrs(BCreg)����BitLineBuff�����߂�B
	; BitLineBuff�� 0f8xx�ɂ���̂ŁAf800�� OR����Ƌ��܂�B

; Ereg: �r�b�g���C���f�[�^

	ld	h,b		; Hreg��Breg���o�b�t�@�B

	; ��������K�v�����邩�ǂ���BitLine�o�b�t�@���`�F�b�N�B
	ld	a,b
	or	BITLINE_MASK
	ld	b,a

	ld	a,(bc)
	and	d
	ret	z

	; BitLine�o�b�t�@�Ƀ}�X�N������0���������ށB
	ld	a,(bc)
	and	e
	ld	(bc),a

	ld	b,h		; Breg�ɕ��A�B
	ld	a,b		; VRAM�v�Z�p��Areg�ɂ�Breg�����Ă����B

	; ���Z�p�ɐݒ�
	ld	h,08h

	OUT_L_ADD_H		; 0
	OUT_L_ADD_H		; 1
	OUT_L_ADD_H		; 2
	OUT_L_ADD_H		; 3
	OUT_L_ADD_H		; 4
	OUT_L_ADD_H		; 5
	out	(c),l		; 6

	ret

;---------------------------------------------------------------;
; 8���C������
; ����
;	BCreg: �`��VRAM�A�h���X
;	Hreg: ���i���Z�p 08h
;	Lreg: VRAM�ւ̏o�͒l 00h
;---------------------------------------------------------------;
clear_image_08:
	; VRAM Adrs(BCreg)����BitLineBuff�����߂�B
	; BitLineBuff�� 0f8xx�ɂ���̂ŁAf800�� OR����Ƌ��܂�B

; Ereg: �r�b�g���C���f�[�^

	ld	d,b		; Dreg��Breg���o�b�t�@�B

	; ��������K�v�����邩�ǂ���BitLine�o�b�t�@���`�F�b�N�B
	ld	a,b
	or	BITLINE_MASK
	ld	b,a

	ld	a,(bc)
	or	a
	ret	z

	; BitLine�o�b�t�@�ɏ����ς݂�0���������ށB
	xor	a
	ld	(bc),a

	ld	b,d		; Breg�ɕ��A�B
	ld	a,b		; VRAM�v�Z�p��Areg�ɂ�Breg�����Ă����B

	; ���Z�p�ɐݒ�
	ld	h,08h

	OUT_L_ADD_H		; 0
	OUT_L_ADD_H		; 1
	OUT_L_ADD_H		; 2
	OUT_L_ADD_H		; 3
	OUT_L_ADD_H		; 4
	OUT_L_ADD_H		; 5
	OUT_L_ADD_H		; 6
	out	(c),l		; 7

	ret



;---------------------------------------------------------------;
; RG 1���C���`��
; ����
;	HLreg: �L�����f�[�^
;	BCreg: �`��VRAM�A�h���X
;	Ereg: �r�b�g���C���f�[�^
;---------------------------------------------------------------;
rc_image_rg_01:
	ld	d,b		; Dreg��Breg���o�b�t�@�B

	ld	a,b
	or	BITLINE_MASK
	ld	b,a

	ld	a,(bc)
	and	e
	jp	nz, rc_blend_rg_01

	ld	a,(bc)	; BitLine�Ƀt���O�𗧂Ă�B
	or	e
	ld	(bc),a

	ld	b,d		; Breg�ɕ��A�B

; wirte
	ld	de, 040c8h	; Ereg��-40+8�̒l�B

	; OUTI�p��+1���Ă����B
	inc b

	; Blue�v���[���̃A�h���X�Ȃ̂ő�����Red�ɂ���B
	; Areg�ɂ��l���c���Ă����B
	ld	a,b
	add	a,d
	ld	b,a

	OUT_RG_HL_ADD_D		; 0

	ret

rc_blend_rg_01:
	ld	a,(bc)
	or	e
	ld	(bc),a

	ld	b,d		; Breg�ɕ��A�B
	ld	d, 40h

	BLEND_RG_HL_ADD_B_D	; 0

	ret

;---------------------------------------------------------------;
; RG 2���C���`��
; ����
;	HLreg: �L�����f�[�^
;	BCreg: �`��VRAM�A�h���X
;	Ereg: �r�b�g���C���f�[�^
;---------------------------------------------------------------;
rc_image_rg_02:
	ld	d,b		; Dreg��Breg���o�b�t�@�B

	ld	a,b
	or	BITLINE_MASK
	ld	b,a

	ld	a,(bc)
	and	e
	jp	nz, rc_blend_rg_02

	ld	a,(bc)	; BitLine�Ƀt���O�𗧂Ă�B
	or	e
	ld	(bc),a

	ld	b,d		; Breg�ɕ��A�B

; wirte
	ld	de, 040c8h	; Ereg��-40+8�̒l�B

	; OUTI�p��+1���Ă����B
	inc b

	; Blue�v���[���̃A�h���X�Ȃ̂ő�����Red�ɂ���B
	; Areg�ɂ��l���c���Ă����B
	ld	a,b
	add	a,d
	ld	b,a

	jp	rg_write_02

rc_blend_rg_02:
	ld	a,(bc)
	or	e
	ld	(bc),a

	ld	b,d		; Breg�ɕ��A�B
	ld	d, 40h

	jp	rg_blend_02

;---------------------------------------------------------------;
; RG 3���C���`��
; ����
;	HLreg: �L�����f�[�^
;	BCreg: �`��VRAM�A�h���X
;	Ereg: �r�b�g���C���f�[�^
;---------------------------------------------------------------;
rc_image_rg_03:
	ld	d,b		; Dreg��Breg���o�b�t�@�B

	ld	a,b
	or	BITLINE_MASK
	ld	b,a

	ld	a,(bc)
	and	e
	jp	nz, rc_blend_rg_03

	ld	a,(bc)	; BitLine�Ƀt���O�𗧂Ă�B
	or	e
	ld	(bc),a

	ld	b,d		; Breg�ɕ��A�B

; wirte
	ld	de, 040c8h	; Ereg��-40+8�̒l�B

	; OUTI�p��+1���Ă����B
	inc b

	; Blue�v���[���̃A�h���X�Ȃ̂ő�����Red�ɂ���B
	; Areg�ɂ��l���c���Ă����B
	ld	a,b
	add	a,d
	ld	b,a

	jp	rg_write_03

rc_blend_rg_03:
	ld	a,(bc)
	or	e
	ld	(bc),a

	ld	b,d		; Breg�ɕ��A�B
	ld	d, 40h

	jp	rg_blend_03

;---------------------------------------------------------------;
; RG 4���C���`��
; ����
;	HLreg: �L�����f�[�^
;	BCreg: �`��VRAM�A�h���X
;	Ereg: �r�b�g���C���f�[�^
;---------------------------------------------------------------;
rc_image_rg_04:
	ld	d,b		; Dreg��Breg���o�b�t�@�B

	ld	a,b
	or	BITLINE_MASK
	ld	b,a

	ld	a,(bc)
	and	e
	jp	nz, rc_blend_rg_04

	ld	a,(bc)	; BitLine�Ƀt���O�𗧂Ă�B
	or	e
	ld	(bc),a

	ld	b,d		; Breg�ɕ��A�B

; wirte
	ld	de, 040c8h	; Ereg��-40+8�̒l�B

	; OUTI�p��+1���Ă����B
	inc b

	; Blue�v���[���̃A�h���X�Ȃ̂ő�����Red�ɂ���B
	; Areg�ɂ��l���c���Ă����B
	ld	a,b
	add	a,d
	ld	b,a

	jp	rg_write_04

rc_blend_rg_04:
	ld	a,(bc)
	or	e
	ld	(bc),a

	ld	b,d		; Breg�ɕ��A�B
	ld	d, 40h

	jp	rg_blend_04

;---------------------------------------------------------------;
; RG 5���C���`��
; ����
;	HLreg: �L�����f�[�^
;	BCreg: �`��VRAM�A�h���X
;	Ereg: �r�b�g���C���f�[�^
;---------------------------------------------------------------;
rc_image_rg_05:
	ld	d,b		; Dreg��Breg���o�b�t�@�B

	ld	a,b
	or	BITLINE_MASK
	ld	b,a

	ld	a,(bc)
	and	e
	jp	nz, rc_blend_rg_05

	ld	a,(bc)	; BitLine�Ƀt���O�𗧂Ă�B
	or	e
	ld	(bc),a

	ld	b,d		; Breg�ɕ��A�B

; wirte
	ld	de, 040c8h	; Ereg��-40+8�̒l�B

	; OUTI�p��+1���Ă����B
	inc b

	; Blue�v���[���̃A�h���X�Ȃ̂ő�����Red�ɂ���B
	; Areg�ɂ��l���c���Ă����B
	ld	a,b
	add	a,d
	ld	b,a

	jp	rg_write_05

rc_blend_rg_05:
	ld	a,(bc)
	or	e
	ld	(bc),a

	ld	b,d		; Breg�ɕ��A�B
	ld	d, 40h

	jp	rg_blend_05

;---------------------------------------------------------------;
; RG 6���C���`��
; ����
;	HLreg: �L�����f�[�^
;	BCreg: �`��VRAM�A�h���X
;	Ereg: �r�b�g���C���f�[�^
;---------------------------------------------------------------;
rc_image_rg_06:
	ld	d,b		; Dreg��Breg���o�b�t�@�B

	ld	a,b
	or	BITLINE_MASK
	ld	b,a

	ld	a,(bc)
	and	e
	jp	nz, rc_blend_rg_06

	ld	a,(bc)	; BitLine�Ƀt���O�𗧂Ă�B
	or	e
	ld	(bc),a

	ld	b,d		; Breg�ɕ��A�B

; wirte
	ld	de, 040c8h	; Ereg��-40+8�̒l�B

	; OUTI�p��+1���Ă����B
	inc b

	; Blue�v���[���̃A�h���X�Ȃ̂ő�����Red�ɂ���B
	; Areg�ɂ��l���c���Ă����B
	ld	a,b
	add	a,d
	ld	b,a

	jp	rg_write_06

rc_blend_rg_06:
	ld	a,(bc)
	or	e
	ld	(bc),a

	ld	b,d		; Breg�ɕ��A�B
	ld	d, 40h

	jp	rg_blend_06

;---------------------------------------------------------------;
; RG 7���C���`��
; ����
;	HLreg: �L�����f�[�^
;	BCreg: �`��VRAM�A�h���X
;	Ereg: �r�b�g���C���f�[�^
;---------------------------------------------------------------;
rc_image_rg_07:
	ld	d,b		; Dreg��Breg���o�b�t�@�B

	ld	a,b
	or	BITLINE_MASK
	ld	b,a

	ld	a,(bc)
	and	e
	jp	nz, rc_blend_rg_07

	ld	a,(bc)	; BitLine�Ƀt���O�𗧂Ă�B
	or	e
	ld	(bc),a

	ld	b,d		; Breg�ɕ��A�B

; wirte
	ld	de, 040c8h	; Ereg��-40+8�̒l�B

	; OUTI�p��+1���Ă����B
	inc b

	; Blue�v���[���̃A�h���X�Ȃ̂ő�����Red�ɂ���B
	; Areg�ɂ��l���c���Ă����B
	ld	a,b
	add	a,d
	ld	b,a

	jp	rg_write_07

rc_blend_rg_07:
	ld	a,(bc)
	or	e
	ld	(bc),a

	ld	b,d		; Breg�ɕ��A�B
	ld	d, 40h

	jp	rg_blend_07

;---------------------------------------------------------------;
; RG 8���C���`��
; ����
;	HLreg: �L�����f�[�^
;	BCreg: �`��VRAM�A�h���X
;---------------------------------------------------------------;
rc_image_rg_08:
	; VRAM Adrs(BCreg)����BitLineBuff�����߂�B
	; BitLineBuff�� 0f8xx�ɂ���̂ŁAf800�� OR����Ƌ��܂�B

; Ereg: �r�b�g���C���f�[�^

	ld	d,b		; Dreg��Breg���o�b�t�@�B

	ld	a,b
	or	BITLINE_MASK
	ld	b,a

	ld	a,(bc)
	or	a
	jp	nz, rc_blend_rg_08

	ld	a,0ffh
	ld	(bc),a

	ld	b,d		; Breg�ɕ��A�B

; wirte
	ld	de, 040c8h	; Ereg��-40+8�̒l�B

	; OUTI�p��+1���Ă����B
	inc b

	; Blue�v���[���̃A�h���X�Ȃ̂ő�����Red�ɂ���B
	; Areg�ɂ��l���c���Ă����B
	ld	a,b
	add	a,d
	ld	b,a

	OUT_RG_HL_ADD_D_E	; 0
rg_write_07:
	OUT_RG_HL_ADD_D_E	; 1
rg_write_06:
	OUT_RG_HL_ADD_D_E	; 2
rg_write_05:
	OUT_RG_HL_ADD_D_E	; 3
rg_write_04:
	OUT_RG_HL_ADD_D_E	; 4
rg_write_03:
	OUT_RG_HL_ADD_D_E	; 5
rg_write_02:
	OUT_RG_HL_ADD_D_E	; 6
rg_write_01:
	OUT_RG_HL_ADD_D		; 7

	ret

rc_blend_rg_08:
	ld	a,0ffh	; Bit���C���ɏ������݁B
	ld	(bc),a

	ld	b,d		; Breg�ɕ��A�B
	ld	d, 40h

	BLEND_RG_HL_ADD_B_D	; 0
	ADD_B_88
rg_blend_07:
	BLEND_RG_HL_ADD_B_D	; 1
	ADD_B_88
rg_blend_06:
	BLEND_RG_HL_ADD_B_D	; 2
	ADD_B_88
rg_blend_05:
	BLEND_RG_HL_ADD_B_D	; 3
	ADD_B_88
rg_blend_04:
	BLEND_RG_HL_ADD_B_D	; 4
	ADD_B_88
rg_blend_03:
	BLEND_RG_HL_ADD_B_D	; 5
	ADD_B_88
rg_blend_02:
	BLEND_RG_HL_ADD_B_D	; 6
	ADD_B_88
rg_blend_01:
	BLEND_RG_HL_ADD_B_D	; 7

	ret


;---------------------------------------------------------------;
; Blue Green 1���C���`��
; ����
;	HLreg: �L�����f�[�^
;	BCreg: �`��VRAM�A�h���X (Blue�v���[���A�h���X)
;	Ereg: �r�b�g���C���f�[�^
;---------------------------------------------------------------;
rc_image_bg_01:
	ld	d,b		; Dreg��Breg���o�b�t�@�B

	ld	a,b
	or	BITLINE_MASK
	ld	b,a

	ld	a,(bc)
	and	e
	jp	nz, rc_blend_bg_01

	ld	a,(bc)	; BitLine�Ƀt���O�𗧂Ă�B
	or	e
	ld	(bc),a

	ld	b,d		; Breg�ɕ��A�B

; wirte
	ld	de, 08088h	; Dreg��Blue��Green, Ereg��-80+8�̒l�B

	; OUTI�p��+1���Ă����B
	inc b

	; Blue�v���[���A�h���X(H)��Areg�ɂ��c���B
	ld	a,b

	OUT_BG_HL_ADD_D		; 0

	ret

rc_blend_bg_01:
	; BitLine�Ƀt���O�𗧂Ă�B
	ld	a,(bc)
	or	e
	ld	(bc),a

	ld	b,d		; Breg�ɕ��A�B
	ld	d, 40h	; ���v���[���Z�o�p (RGB�v���[���ɏ����ނ��� 040h)

	BLEND_BG_HL_ADD_B_D	; 0

	ret

;---------------------------------------------------------------;
; Blue Green 2���C���`��
; ����
;	HLreg: �L�����f�[�^
;	BCreg: �`��VRAM�A�h���X
;	Ereg: �r�b�g���C���f�[�^
;---------------------------------------------------------------;
rc_image_bg_02:
	ld	d,b		; Dreg��Breg���o�b�t�@�B

	ld	a,b
	or	BITLINE_MASK
	ld	b,a

	ld	a,(bc)
	and	e
	jp	nz, rc_blend_bg_02

	ld	a,(bc)	; BitLine�Ƀt���O�𗧂Ă�B
	or	e
	ld	(bc),a

	ld	b,d		; Breg�ɕ��A�B

; wirte
	ld	de, 08088h	; Dreg��Blue��Green, Ereg��-80+8�̒l�B

	; OUTI�p��+1���Ă����B
	inc b

	; Blue�v���[���A�h���X(H)��Areg�ɂ��c���B
	ld	a,b

	jp		bg_write_02


rc_blend_bg_02:
	ld	a,(bc)	; BitLine�Ƀt���O�𗧂Ă�B
	or	e
	ld	(bc),a

	ld	b,d		; Breg�ɕ��A�B
	ld	d, 40h	; ���v���[���Z�o�p (RGB�v���[���ɏ����ނ��� 040h)

	jp	bg_blend_02

;---------------------------------------------------------------;
; Blue Green 3���C���`��
; ����
;	HLreg: �L�����f�[�^
;	BCreg: �`��VRAM�A�h���X
;	Ereg: �r�b�g���C���f�[�^
;---------------------------------------------------------------;
rc_image_bg_03:
	ld	d,b		; Dreg��Breg���o�b�t�@�B

	ld	a,b
	or	BITLINE_MASK
	ld	b,a

	ld	a,(bc)
	and	e
	jp	nz, rc_blend_bg_03

	ld	a,(bc)	; BitLine�Ƀt���O�𗧂Ă�B
	or	e
	ld	(bc),a

	ld	b,d		; Breg�ɕ��A�B

; wirte
	ld	de, 08088h	; Dreg��Blue��Green, Ereg��-80+8�̒l�B

	; OUTI�p��+1���Ă����B
	inc b

	; Blue�v���[���A�h���X(H)��Areg�ɂ��c���B
	ld	a,b

	jp		bg_write_03

rc_blend_bg_03:
	ld	a,(bc)	; BitLine�Ƀt���O�𗧂Ă�B
	or	e
	ld	(bc),a

	ld	b,d		; Breg�ɕ��A�B
	ld	d, 40h	; ���v���[���Z�o�p (RGB�v���[���ɏ����ނ��� 040h)

	jp	bg_blend_03

;---------------------------------------------------------------;
; Blue Green 4���C���`��
; ����
;	HLreg: �L�����f�[�^
;	BCreg: �`��VRAM�A�h���X
;	Ereg: �r�b�g���C���f�[�^
;---------------------------------------------------------------;
rc_image_bg_04:
	ld	d,b		; Dreg��Breg���o�b�t�@�B

	ld	a,b
	or	BITLINE_MASK
	ld	b,a

	ld	a,(bc)
	and	e
	jp	nz, rc_blend_bg_04

	ld	a,(bc)	; BitLine�Ƀt���O�𗧂Ă�B
	or	e
	ld	(bc),a

	ld	b,d		; Breg�ɕ��A�B

; wirte
	ld	de, 08088h	; Dreg��Blue��Green, Ereg��-80+8�̒l�B

	; OUTI�p��+1���Ă����B
	inc b

	; Blue�v���[���A�h���X(H)��Areg�ɂ��c���B
	ld	a,b

	jp		bg_write_04

rc_blend_bg_04:
	ld	a,(bc)	; BitLine�Ƀt���O�𗧂Ă�B
	or	e
	ld	(bc),a

	ld	b,d		; Breg�ɕ��A�B
	ld	d, 40h	; ���v���[���Z�o�p (RGB�v���[���ɏ����ނ��� 040h)

	jp	bg_blend_04

;---------------------------------------------------------------;
; Blue Green 5���C���`��
; ����
;	HLreg: �L�����f�[�^
;	BCreg: �`��VRAM�A�h���X
;	Ereg: �r�b�g���C���f�[�^
;---------------------------------------------------------------;
rc_image_bg_05:
	ld	d,b		; Dreg��Breg���o�b�t�@�B

	ld	a,b
	or	BITLINE_MASK
	ld	b,a

	ld	a,(bc)
	and	e
	jp	nz, rc_blend_bg_05

	ld	a,(bc)	; BitLine�Ƀt���O�𗧂Ă�B
	or	e
	ld	(bc),a

	ld	b,d		; Breg�ɕ��A�B

; wirte
	ld	de, 08088h	; Dreg��Blue��Green, Ereg��-80+8�̒l�B

	; OUTI�p��+1���Ă����B
	inc b

	; Blue�v���[���A�h���X(H)��Areg�ɂ��c���B
	ld	a,b

	jp		bg_write_05


rc_blend_bg_05:
	ld	a,(bc)	; BitLine�Ƀt���O�𗧂Ă�B
	or	e
	ld	(bc),a

	ld	b,d		; Breg�ɕ��A�B
	ld	d, 40h	; ���v���[���Z�o�p (RGB�v���[���ɏ����ނ��� 040h)

	jp	bg_blend_05

;---------------------------------------------------------------;
; Blue Green 6���C���`��
; ����
;	HLreg: �L�����f�[�^
;	BCreg: �`��VRAM�A�h���X
;	Ereg: �r�b�g���C���f�[�^
;---------------------------------------------------------------;
rc_image_bg_06:
	ld	d,b		; Dreg��Breg���o�b�t�@�B

	ld	a,b
	or	BITLINE_MASK
	ld	b,a

	ld	a,(bc)
	and	e
	jp	nz, rc_blend_bg_06

	ld	a,(bc)	; BitLine�Ƀt���O�𗧂Ă�B
	or	e
	ld	(bc),a

	ld	b,d		; Breg�ɕ��A�B

; wirte
	ld	de, 08088h	; Dreg��Blue��Green, Ereg��-80+8�̒l�B

	; OUTI�p��+1���Ă����B
	inc b

	; Blue�v���[���A�h���X(H)��Areg�ɂ��c���B
	ld	a,b

	jp		bg_write_06

rc_blend_bg_06:
	ld	a,(bc)	; BitLine�Ƀt���O�𗧂Ă�B
	or	e
	ld	(bc),a

	ld	b,d		; Breg�ɕ��A�B
	ld	d, 40h	; ���v���[���Z�o�p (RGB�v���[���ɏ����ނ��� 040h)

	jp	bg_blend_06

;---------------------------------------------------------------;
; Blue Green 7���C���`��
; ����
;	HLreg: �L�����f�[�^
;	BCreg: �`��VRAM�A�h���X
;	Ereg: �r�b�g���C���f�[�^
;---------------------------------------------------------------;
rc_image_bg_07:
	ld	d,b		; Dreg��Breg���o�b�t�@�B

	ld	a,b
	or	BITLINE_MASK
	ld	b,a

	ld	a,(bc)
	and	e
	jp	nz, rc_blend_bg_07

	ld	a,(bc)	; BitLine�Ƀt���O�𗧂Ă�B
	or	e
	ld	(bc),a

	ld	b,d		; Breg�ɕ��A�B

; wirte
	ld	de, 08088h	; Dreg��Blue��Green, Ereg��-80+8�̒l�B

	; OUTI�p��+1���Ă����B
	inc b

	; Blue�v���[���A�h���X(H)��Areg�ɂ��c���B
	ld	a,b

	jp		bg_write_07

rc_blend_bg_07:
	ld	a,(bc)	; BitLine�Ƀt���O�𗧂Ă�B
	or	e
	ld	(bc),a

	ld	b,d		; Breg�ɕ��A�B
	ld	d, 40h	; ���v���[���Z�o�p (RGB�v���[���ɏ����ނ��� 040h)

	jp	bg_blend_07

;---------------------------------------------------------------;
; Blue Green 8���C���`��
; ����
;	HLreg: �L�����f�[�^
;	BCreg: �`��VRAM�A�h���X
;	Ereg: �r�b�g���C���f�[�^
;---------------------------------------------------------------;
rc_image_bg_08:
	ld	d,b		; Dreg��Breg���o�b�t�@�B

	ld	a,b
	or	BITLINE_MASK
	ld	b,a

	ld	a,(bc)
	and	e
	jp	nz, rc_blend_bg_08

	ld	a, 0ffh; BitLine�Ƀt���O�𗧂Ă�B
	ld	(bc),a

	ld	b,d		; Breg�ɕ��A�B

; wirte
	ld	de, 08088h	; Dreg��Blue��Green, Ereg��-80+8�̒l�B

	; OUTI�p��+1���Ă����B
	inc b

	; Blue�v���[���A�h���X(H)��Areg�ɂ��c���B
	ld	a,b

	OUT_BG_HL_ADD_D		; 0
	ADD_B_E
bg_write_07:
	OUT_BG_HL_ADD_D		; 1
	ADD_B_E
bg_write_06:
	OUT_BG_HL_ADD_D		; 2
	ADD_B_E
bg_write_05:
	OUT_BG_HL_ADD_D		; 3
	ADD_B_E
bg_write_04:
	OUT_BG_HL_ADD_D		; 4
	ADD_B_E
bg_write_03:
	OUT_BG_HL_ADD_D		; 5
	ADD_B_E
bg_write_02:
	OUT_BG_HL_ADD_D		; 6
	ADD_B_E
bg_write_01:
	OUT_BG_HL_ADD_D		; 7

	ret

rc_blend_bg_08:
	ld	a, 0ffh		; BitLine�Ƀt���O�𗧂Ă�B
	ld	(bc),a

	ld	b,d		; Breg�ɕ��A�B
	ld	d, 40h	; ���v���[���Z�o�p (RGB�v���[���ɏ����ނ��� 040h)

	BLEND_BG_HL_ADD_B_D	; 0
	ADD_B_88
bg_blend_07:
	BLEND_BG_HL_ADD_B_D	; 1
	ADD_B_88
bg_blend_06:
	BLEND_BG_HL_ADD_B_D	; 2
	ADD_B_88
bg_blend_05:
	BLEND_BG_HL_ADD_B_D	; 3
	ADD_B_88
bg_blend_04:
	BLEND_BG_HL_ADD_B_D	; 4
	ADD_B_88
bg_blend_03:
	BLEND_BG_HL_ADD_B_D	; 5
	ADD_B_88
bg_blend_02:
	BLEND_BG_HL_ADD_B_D	; 6
	ADD_B_88
bg_blend_01:
	BLEND_BG_HL_ADD_B_D	; 7

	ret


;----
	END

