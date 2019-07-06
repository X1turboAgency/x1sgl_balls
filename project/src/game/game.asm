;---------------------------------------------------------------;
;	Copyright (c) 2019 game.asm
;	This software is released under the MIT License.
;	http://opensource.org/licenses/mit-license.php
;---------------------------------------------------------------; 

;---------------------------------------------------------------; 
;---------------------------------------------------------------; 
init_game:

	; Flipの初期化
	call	init_flip

	; キャラクタデータ登録
	call	init_chara_data_manager

	ret

	END
