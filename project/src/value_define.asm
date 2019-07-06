;---------------------------------------------------------------;
;	Copyright (c) 2019 value_define.asm
;	This software is released under the MIT License.
;	http://opensource.org/licenses/mit-license.php
;---------------------------------------------------------------; 

;---------------------------------------------------------------; 
;---------------------------------------------------------------; 

; �������o���N�̐ݒ�
;	���C�������� 010h
;	�o���N������ Bank 0: 00h    Bank 1: 01h
BANK_0B00				equ	0b00h

BANK_MAIN				equ 010h
BANK_00					equ	000h
BANK_01					equ 001h

CTC_ADRS				equ	01fa0h

ATTR_VRAM_ADRS			equ	02000h
TEXT_VRAM_ADRS			equ	03000h
KTEXT_VRAM_ADRS			equ	03800h

TEXT_VRAM0_ADRS			equ	03000h
TEXT_VRAM1_ADRS			equ	03400h

TEXT_VRAM19_SIZE		equ	(19*40)
TEXT_VRAM14_SIZE		equ	(14*40)
TEXT_VRAM7_SIZE			equ	(7*40)

KANJI_VRAM_ADRS			equ	03800h

B_VRAM_ADRS				equ	04000h
R_VRAM_ADRS				equ	08000h
G_VRAM_ADRS				equ	0c000h
PLANE_SIZE				equ	04000h		; 1�v���[���̃T�C�Y

FLIP_ADRS				equ	04h	; VRAM�A�h���X�t���b�v�l


BLEND_BUFFER_ADRS		equ	09f00h
BLEND_BUFFER_SIZE		equ	05dc0h

PCG_BLUE				equ	015h
PCG_RED					equ	016h
PCG_GREEN				equ	017h

;;CRTC_1FD0				equ	(023h | 08h)	; PCG�����A�N�Z�X���[�h + 24KHz + 2���X�^
CRTC_1FD0				equ	023h	; PCG�����A�N�Z�X���[�h + 24KHz + 2���X�^

CRTC_1FD0_L				equ	020h	; PCG�����A�N�Z�X���[�h


;JUMP_TABLE_SIZE12		equ	0f5h


; ���C���������}�b�v
; 0000-0f4ff �v���O����,�f�[�^�G���A
; 0f500-0f5ff �����݃x�N�g��,�X�^�b�N
; 0f600h VRAM�A�h���X�e�[�u��(H)
; 0f700h VRAM�A�h���X�e�[�u��(L)
; 0f800h �r�b�g���C���o�b�t�@(Page 0)
; 0fc00h �r�b�g���C���o�b�t�@(Page 1)

INT_VECTOR_BUFF			equ	0f500h

INT_VECTOR_KEYBOARD		equ	INT_VECTOR_BUFF + 010h

STACK_BUFF				equ 0f500h+0100h	; �X�^�b�N�|�C���^


VRAM_ADRS_TBL_H			equ	0f6h	; VRAM�A�h���X�e�[�u�����
VRAM_ADRS_TBL_L			equ	0f7h	; VRAM�A�h���X�e�[�u������

BITLINE_MASK			equ	0f8h

BITLINE_BUFFER0_ADRS	equ	0f800h
BITLINE_BUFFER0_H		equ	0f8h

BITLINE_BUFFER1_ADRS	equ	0fc00h
BITLINE_BUFFER1_H		equ	0fch

BITLINE_BUFFER_SIZE		equ	1000

;�p���b�g�f�[�^
GAME_PALET_B			equ	0ceh
GAME_PALET_R			equ	0f2h
GAME_PALET_G			equ	066h

; --------------
; �L�����N�^KIND
; �W�����v�e�[�u���̊֌W���� 3�Â�����B
KIND_NONE				equ	0
KIND_BALL_B				equ	1*3
KIND_BALL_BR			equ	2*3
KIND_BALL_BRG			equ	3*3

; --------------
; �L�����N�^�p�^�[���f�[�^
X_OFS_0					equ	00h
X_OFS_1					equ	01h
X_OFS_2					equ	02h
X_OFS_3					equ	03h
X_OFS_4					equ	04h
X_OFS_5					equ	05h
X_OFS_6					equ	06h
X_OFS_7					equ	07h
X_OFS_NUM				equ	08h

; --------------
; �L�����N�^�p�^�[��

PAT_BALL_B00			equ	01h*2	; �{�[��(B) 00
PAT_BALL_B01			equ	02h*2	; �{�[��(B) 01

PAT_BALL2_BR00			equ	03h*2	; �{�[��(BR) 00
PAT_BALL2_BR01			equ	04h*2	; �{�[��(BR) 01

PAT_BALL3_BRG00			equ	05h*2	; �{�[��(BRG) 00
PAT_BALL3_BRG01			equ	06h*2	; �{�[��(BRG) 01
PAT_BALL3_BRG02			equ	07h*2	; �{�[��(BRG) 02
PAT_BALL3_BRG03			equ	08h*2	; �{�[��(BRG) 03

;---------------------------------------------------------------;
;---------------------------------------------------------------;

; ��ʊO����萔
; (�\��(X ���8bit) + OFF_SCREEN_X_OFFSET) > OFF_SCREEN_X_RANGE �̎���ʊO
;
; ��:
; �@��ʊO: -8 �` 328�Ƃ��ăX�N���[���l(���8bit)�� 0fch�`0a4h�ɂȂ�B
; �@+3�� 0a7h�`0ffh�͈̔͂ł���Ή�ʊO�B
; �@OFF_SCREEN_X_OFFSET �𑫂��āAOFF_SCREEN_X_RANGE���傫����Ή�ʊO�B
OFF_SCREEN_X_OFFSET		equ	03h
OFF_SCREEN_X_RANGE		equ	167
CLIP_RIGHT_SCREEN_X		equ	164



END

