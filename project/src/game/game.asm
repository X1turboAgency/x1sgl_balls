;---------------------------------------------------------------;
;	Copyright (c) 2019 game.asm
;	This software is released under the MIT License.
;	http://opensource.org/licenses/mit-license.php
;---------------------------------------------------------------; 

;---------------------------------------------------------------; 
;---------------------------------------------------------------; 
init_game:

	; Flip�̏�����
	call	init_flip

	; �L�����N�^�f�[�^�o�^
	call	init_chara_data_manager

	ret

	END
