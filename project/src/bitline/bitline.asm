;---------------------------------------------------------------;
;	Copyright (c) 2019 bitline.asm
;	This software is released under the MIT License.
;	http://opensource.org/licenses/mit-license.php
;---------------------------------------------------------------; 

; BitLine�֘A (2017/02/18)
; BitLine��TimeStamp�̕ό`�o�[�W�����Ƃ��čl�Ă����B
; 8x8�̊e���C����1bit�ŕ\�����Ă���BLine0��Bit0�ɑΉ�����B
; �e���C����`�掞�Ή�����Bit�𗧂Ă�B
; ���̃o�b�t�@���g�����ŁA���C���P�ʂ̃u�����h���肪�\�ɂȂ�B

init_bitline:
	; BitLineBuffer���N���A
	ld	hl, BITLINE_BUFFER0_ADRS
	ld	bc, BITLINE_BUFFER_SIZE
	call	clear_mem

	ld	hl, BITLINE_BUFFER1_ADRS
	ld	bc, BITLINE_BUFFER_SIZE
	call	clear_mem

	ret


; ----
	END

