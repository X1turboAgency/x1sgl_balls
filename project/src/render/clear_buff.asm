;---------------------------------------------------------------;
;	Copyright (c) 2019 clear_buff.asm
;	This software is released under the MIT License.
;	http://opensource.org/licenses/mit-license.php
;---------------------------------------------------------------; 

; Clear Buffer.

init_clear_char_work:
	ld	a,(flip_w)
	jp	setup_clear_char_work


; �����o�b�t�@�������߂�B
calc_del_char_num:
	ld	a, ( flip_render_w )
	or	del_char_num_w & 0ffh
	ld	l,a
	ld	h, del_char_num_w >> 8

	; �����o�b�t�@�̉���8bit�������݃A�h���X��\���Ă���̂ŁA
	; �����4�Ŋ������l�����ƂȂ�B
	ld	a, ( del_char_write_w+1 )
	and	07ch
	RRCA
	RRCA

	ld	(hl),a

	ret


; �����o�b�t�@�ɓo�^���Ă���VRAM���`�F�b�N���ăN���A����B
; BitLine�o�[�W����
update_clear_buff_w:
	; �O��̍폜�L�����o�b�t�@�����Z�o����B
	ld	a, ( flip_render_w )
	or	del_char_num_w & 0ffh
	ld	l,a
	ld	h, del_char_num_w >> 8

	; ���������Ή������Ȃ��B
	ld	a,(hl)
	or	a
	ret	z

	ld ixl,a	; ����IXLreg�ցB

	; �����A�N�Z�X���[�h�֕ύX
	di
	ld bc, 01a03h
	ld de, 00b0ah	; PortC5 �� 1��0�ɂ���B
	out (c),d
	out (c),e

	; �����L�������[�N: ���ȏ�����
del_char_read_w:
	ld	hl, 0000h

ucbw_5:
	; ����VRAM�A�h���X
	ld	c,(hl)
	inc l

	ld	a,(hl)
	and	03fh	; �����A�N�Z�X���[�h(RGB)��VRAM�A�h���X(0000h�`03fffh)�ցB
	ld	b,a
	inc l

	; �`��^�C�v (PosY,SizeY���݂̃f�[�^)
	ld	a,(hl)	; 
	inc	l

	ex	de,hl

	ld		l,a
	ld		h, clear_chara_jump_tbl >> 8

	; �W�����v�e�[�u��������Ȃ��Ȃ������߁A
	; �`��^�C�v��00-1ff�܂Ŋg������B

	ld		a,(hl)
	inc		h
	ld		h,(hl)
	ld		l,a
	ld		( ucbw_1+1 ),hl

	ld	a,(de)		; X�T�C�Y (�L�����P��)
	inc	e

	; �����p�f�[�^(���i���Z�p/VRAM�ɏ����ޒl)
	ld hl,0800h

	push	de

ucbw_4:
	ex	af,af'

	push	bc
ucbw_1:
	; ��������(���ȏ�����)
	call	0000h

	; X+
	pop	bc
	inc	bc

	ex	af,af'
	dec	a
	jp	nz, ucbw_4

	pop	hl

	dec ixl
	jp	nz, ucbw_5

	; �����A�N�Z�X���[�h�������B
	ld a,040h
	in a,(c)		; 040**h����in

	ei

	ret

;----
	END
