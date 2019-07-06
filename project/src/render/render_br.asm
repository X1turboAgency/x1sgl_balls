;---------------------------------------------------------------;
;	Copyright (c) 2019 render_br.asm
;	This software is released under the MIT License.
;	http://opensource.org/licenses/mit-license.php
;---------------------------------------------------------------; 

;---------------------------------------------------------------;
; Blue Red 1���C���`��
; ����
;	HLreg: �L�����f�[�^
;	BCreg: �`��VRAM�A�h���X (Blue�v���[���A�h���X)
;	Ereg: �r�b�g���C���f�[�^
;---------------------------------------------------------------;
rc_image_br_01:
	ld	d,b		; Dreg��Breg���o�b�t�@�B

	ld	a,b
	or	BITLINE_MASK
	ld	b,a

	ld	a,(bc)
	and	e
	jp	nz, rc_blend_br_01

	ld	a,(bc)	; BitLine�Ƀt���O�𗧂Ă�B
	or	e
	ld	(bc),a

	ld	b,d		; Breg�ɕ��A�B

; wirte
	ld	de, 040c8h	; Dreg��Blue��Red, Ereg��-40+8�̒l�B

	; OUTI�p��+1���Ă����B
	inc b

	; Blue�v���[���A�h���X(H)��Areg�ɂ��c���B
	ld	a,b

	OUT_BR_HL_ADD_D		; 0

	; �Ō��R�v���[������G�v���[��,������ OUTI�p��+1���Ă����̂����炷�B
	add	a, 040h-1
	ld	b,a

	ret

rc_blend_br_01:
	; BitLine�Ƀt���O�𗧂Ă�B
	ld	a,(bc)
	or	e
	ld	(bc),a

	ld	b,d		; Breg�ɕ��A�B
	ld	d, 40h	; ���v���[���Z�o�p (RGB�v���[���ɏ����ނ��� 040h)

	BLEND_BR_HL_ADD_B_D	; 0

	; �I������G�v���[���̈ʒu���w���Ă���B

	ret

;---------------------------------------------------------------;
; Blue Red 2���C���`��
; ����
;	HLreg: �L�����f�[�^
;	BCreg: �`��VRAM�A�h���X
;	Ereg: �r�b�g���C���f�[�^
;---------------------------------------------------------------;
rc_image_br_02:
	ld	d,b		; Dreg��Breg���o�b�t�@�B

	ld	a,b
	or	BITLINE_MASK
	ld	b,a

	ld	a,(bc)
	and	e
	jp	nz, rc_blend_br_02

	ld	a,(bc)	; BitLine�Ƀt���O�𗧂Ă�B
	or	e
	ld	(bc),a

	ld	b,d		; Breg�ɕ��A�B

; wirte
	ld	de, 040c8h	; Dreg��Blue��Red, Ereg��-40+8�̒l�B

	; OUTI�p��+1���Ă����B
	inc b

	; Blue�v���[���A�h���X(H)��Areg�ɂ��c���B
	ld	a,b

	jp	br_write_02

rc_blend_br_02:
	ld	a,(bc)	; BitLine�Ƀt���O�𗧂Ă�B
	or	e
	ld	(bc),a

	ld	b,d		; Breg�ɕ��A�B
	ld	d, 40h	; ���v���[���Z�o�p (RGB�v���[���ɏ����ނ��� 040h)

	jp	br_blend_02

;---------------------------------------------------------------;
; Blue Red 3���C���`��
; ����
;	HLreg: �L�����f�[�^
;	BCreg: �`��VRAM�A�h���X
;	Ereg: �r�b�g���C���f�[�^
;---------------------------------------------------------------;
rc_image_br_03:
	ld	d,b		; Dreg��Breg���o�b�t�@�B

	ld	a,b
	or	BITLINE_MASK
	ld	b,a

	ld	a,(bc)
	and	e
	jp	nz, rc_blend_br_03

	ld	a,(bc)	; BitLine�Ƀt���O�𗧂Ă�B
	or	e
	ld	(bc),a

	ld	b,d		; Breg�ɕ��A�B

; wirte
	ld	de, 040c8h	; Dreg��Blue��Red, Ereg��-40+8�̒l�B

	; OUTI�p��+1���Ă����B
	inc b

	; Blue�v���[���A�h���X(H)��Areg�ɂ��c���B
	ld	a,b

	jp	br_write_03

rc_blend_br_03:
	ld	a,(bc)	; BitLine�Ƀt���O�𗧂Ă�B
	or	e
	ld	(bc),a

	ld	b,d		; Breg�ɕ��A�B
	ld	d, 40h	; ���v���[���Z�o�p (RGB�v���[���ɏ����ނ��� 040h)

	jp	br_blend_03

;---------------------------------------------------------------;
; Blue Green 4���C���`��
; ����
;	HLreg: �L�����f�[�^
;	BCreg: �`��VRAM�A�h���X
;	Ereg: �r�b�g���C���f�[�^
;---------------------------------------------------------------;
rc_image_br_04:
	ld	d,b		; Dreg��Breg���o�b�t�@�B

	ld	a,b
	or	BITLINE_MASK
	ld	b,a

	ld	a,(bc)
	and	e
	jp	nz, rc_blend_br_04

	ld	a,(bc)	; BitLine�Ƀt���O�𗧂Ă�B
	or	e
	ld	(bc),a

	ld	b,d		; Breg�ɕ��A�B

; wirte
	ld	de, 040c8h	; Dreg��Blue��Red, Ereg��-40+8�̒l�B

	; OUTI�p��+1���Ă����B
	inc b

	; Blue�v���[���A�h���X(H)��Areg�ɂ��c���B
	ld	a,b

	jp	br_write_04

rc_blend_br_04:
	ld	a,(bc)	; BitLine�Ƀt���O�𗧂Ă�B
	or	e
	ld	(bc),a

	ld	b,d		; Breg�ɕ��A�B
	ld	d, 40h	; ���v���[���Z�o�p (RGB�v���[���ɏ����ނ��� 040h)

	jp	br_blend_04

;---------------------------------------------------------------;
; Blue Green 5���C���`��
; ����
;	HLreg: �L�����f�[�^
;	BCreg: �`��VRAM�A�h���X
;	Ereg: �r�b�g���C���f�[�^
;---------------------------------------------------------------;
rc_image_br_05:
	ld	d,b		; Dreg��Breg���o�b�t�@�B

	ld	a,b
	or	BITLINE_MASK
	ld	b,a

	ld	a,(bc)
	and	e
	jp	nz, rc_blend_br_05

	ld	a,(bc)	; BitLine�Ƀt���O�𗧂Ă�B
	or	e
	ld	(bc),a

	ld	b,d		; Breg�ɕ��A�B

; wirte
	ld	de, 040c8h	; Dreg��Blue��Red, Ereg��-40+8�̒l�B

	; OUTI�p��+1���Ă����B
	inc b

	; Blue�v���[���A�h���X(H)��Areg�ɂ��c���B
	ld	a,b

	jp	br_write_05

rc_blend_br_05:
	ld	a,(bc)	; BitLine�Ƀt���O�𗧂Ă�B
	or	e
	ld	(bc),a

	ld	b,d		; Breg�ɕ��A�B
	ld	d, 40h	; ���v���[���Z�o�p (RGB�v���[���ɏ����ނ��� 040h)

	jp	br_blend_05

;---------------------------------------------------------------;
; Blue Green 6���C���`��
; ����
;	HLreg: �L�����f�[�^
;	BCreg: �`��VRAM�A�h���X
;	Ereg: �r�b�g���C���f�[�^
;---------------------------------------------------------------;
rc_image_br_06:
	ld	d,b		; Dreg��Breg���o�b�t�@�B

	ld	a,b
	or	BITLINE_MASK
	ld	b,a

	ld	a,(bc)
	and	e
	jp	nz, rc_blend_br_06

	ld	a,(bc)	; BitLine�Ƀt���O�𗧂Ă�B
	or	e
	ld	(bc),a

	ld	b,d		; Breg�ɕ��A�B

; wirte
	ld	de, 040c8h	; Dreg��Blue��Red, Ereg��-40+8�̒l�B

	; OUTI�p��+1���Ă����B
	inc b

	; Blue�v���[���A�h���X(H)��Areg�ɂ��c���B
	ld	a,b

	jp	br_write_06

rc_blend_br_06:
	ld	a,(bc)	; BitLine�Ƀt���O�𗧂Ă�B
	or	e
	ld	(bc),a

	ld	b,d		; Breg�ɕ��A�B
	ld	d, 40h	; ���v���[���Z�o�p (RGB�v���[���ɏ����ނ��� 040h)

	jp	br_blend_06

;---------------------------------------------------------------;
; Blue Green 7���C���`��
; ����
;	HLreg: �L�����f�[�^
;	BCreg: �`��VRAM�A�h���X
;	Ereg: �r�b�g���C���f�[�^
;---------------------------------------------------------------;
rc_image_br_07:
	ld	d,b		; Dreg��Breg���o�b�t�@�B

	ld	a,b
	or	BITLINE_MASK
	ld	b,a

	ld	a,(bc)
	and	e
	jp	nz, rc_blend_br_07

	ld	a,(bc)	; BitLine�Ƀt���O�𗧂Ă�B
	or	e
	ld	(bc),a

	ld	b,d		; Breg�ɕ��A�B

; wirte
	ld	de, 040c8h	; Dreg��Blue��Red, Ereg��-40+8�̒l�B

	; OUTI�p��+1���Ă����B
	inc b

	; Blue�v���[���A�h���X(H)��Areg�ɂ��c���B
	ld	a,b

	jp	br_write_07

rc_blend_br_07:
	ld	a,(bc)	; BitLine�Ƀt���O�𗧂Ă�B
	or	e
	ld	(bc),a

	ld	b,d		; Breg�ɕ��A�B
	ld	d, 40h	; ���v���[���Z�o�p (RGB�v���[���ɏ����ނ��� 040h)

	jp	br_blend_07

;---------------------------------------------------------------;
; Blue Green 8���C���`��
; ����
;	HLreg: �L�����f�[�^
;	BCreg: �`��VRAM�A�h���X
;	Ereg: �r�b�g���C���f�[�^
;---------------------------------------------------------------;
rc_image_br_08:
	ld	d,b		; Dreg��Breg���o�b�t�@�B

	ld	a,b
	or	BITLINE_MASK
	ld	b,a

	ld	a,(bc)
	and	e
	jp	nz, rc_blend_br_08

	ld	a, 0ffh; BitLine�Ƀt���O�𗧂Ă�B
	ld	(bc),a

	ld	b,d		; Breg�ɕ��A�B

; wirte
	ld	de, 040c8h	; Dreg��Blue��Red, Ereg��-40+8�̒l�B

	; OUTI�p��+1���Ă����B
	inc b

	; Blue�v���[���A�h���X(H)��Areg�ɂ��c���B
	ld	a,b

	OUT_BR_HL_ADD_D		; 0
	ADD_B_E
br_write_07:
	OUT_BR_HL_ADD_D		; 1
	ADD_B_E
br_write_06:
	OUT_BR_HL_ADD_D		; 2
	ADD_B_E
br_write_05:
	OUT_BR_HL_ADD_D		; 3
	ADD_B_E
br_write_04:
	OUT_BR_HL_ADD_D		; 4
	ADD_B_E
br_write_03:
	OUT_BR_HL_ADD_D		; 5
	ADD_B_E
br_write_02:
	OUT_BR_HL_ADD_D		; 6
	ADD_B_E
br_write_01:
	OUT_BR_HL_ADD_D		; 7

	; �Ō��R�v���[������G�v���[��,������ OUTI�p��+1���Ă����̂����炷�B
	add	a, 040h-1
	ld	b,a

	ret

rc_blend_br_08:
	ld	a, 0ffh		; BitLine�Ƀt���O�𗧂Ă�B
	ld	(bc),a

	ld	b,d		; Breg�ɕ��A�B
	ld	d, 40h	; ���v���[���Z�o�p (RGB�v���[���ɏ����ނ��� 040h)

	BLEND_BR_HL_ADD_B_D	; 0
	ADD_B_88
br_blend_07:
	BLEND_BR_HL_ADD_B_D	; 1
	ADD_B_88
br_blend_06:
	BLEND_BR_HL_ADD_B_D	; 2
	ADD_B_88
br_blend_05:
	BLEND_BR_HL_ADD_B_D	; 3
	ADD_B_88
br_blend_04:
	BLEND_BR_HL_ADD_B_D	; 4
	ADD_B_88
br_blend_03:
	BLEND_BR_HL_ADD_B_D	; 5
	ADD_B_88
br_blend_02:
	BLEND_BR_HL_ADD_B_D	; 6
	ADD_B_88
br_blend_01:
	BLEND_BR_HL_ADD_B_D	; 7

	; �I������G�v���[���̈ʒu���w���Ă���B

	ret


;----
	END
