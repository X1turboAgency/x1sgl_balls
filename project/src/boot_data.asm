;---------------------------------------------------------------; 
;	Copyright (c) 2019 boot_data.asm
;	This software is released under the MIT License.
;	http://opensource.org/licenses/mit-license.php
;
;	X1SGL �u�[�g�f�[�^
;	�G�~�����[�^�̃f�B�X�N�u�[�g���s�����߂̃f�[�^
;---------------------------------------------------------------; 

PROG_TOP	equ	00000h
PROG_LENG	equ PROG_END - PROG_TOP

; LOADM�`���ɂ��邽�߂ɁA�擪��[�J�n�A�h���X][�I���A�h���X+1]��ݒ肷��B
; ��ł�����΁A0000h����T�C�Y 100h �ł���΁A0000h,00ffh ���������͂��ł���B
; �������A���ۂɂ� 0000h,0100h �łȂ���΍Ō��1byte������Ă��܂��B

	ORG PROG_TOP-4
	dw	PROG_TOP
	dw	PROG_END

	jp	START_MAIN

	END
