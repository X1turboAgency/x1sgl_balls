;---------------------------------------------------------------;
;	Copyright (c) 2019 mem_util.asm
;	This software is released under the MIT License.
;	http://opensource.org/licenses/mit-license.php
;---------------------------------------------------------------; 

;---------------------------------------------------------------; 
;	�������ɒl���Z�b�g
;	HLreg: �������擪�A�h���X
;	BCreg: �Z�b�g����T�C�Y
;	Areg: �Z�b�g����l
;---------------------------------------------------------------; 
clear_mem:
	xor	a

fill_mem:
	ld d,h
	ld e,l
	inc de

	dec bc

	ld (hl),a
	ldir

	ret

;---------------------------------------------------------------; 
	END
