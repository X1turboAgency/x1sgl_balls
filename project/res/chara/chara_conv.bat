@echo off

SET CMD=..\..\bin\png2mrgb.exe

SET DTBL=-d DrawTypeTable.txt

rem ボール (1プレーン)

rem p0
%CMD% data\ball_p0_c1.png ball_p0_c1.asm -o 1 -m 1 -x -4 -y -8 -t %DTBL%

rem p1
%CMD% data\ball_p1_c1.png ball_p1_c1.asm -o 1 -m 1 -x -4 -y -8 -t %DTBL%


rem ボール (2プレーン)

rem p0
%CMD% data\ball2_p0_c2.png ball2_p0_c2.asm -o 1 -m 3 -x -4 -y -8 -t %DTBL%

rem p1
%CMD% data\ball2_p1_c2.png ball2_p1_c2.asm -o 1 -m 3 -x -4 -y -8 -t %DTBL%

rem ボール (3プレーン)

rem p0
%CMD% data\ball3_p0_c3.png ball3_p0_c3.asm -o 1 -m 7 -x -4 -y -8 -t %DTBL%

rem p1
%CMD% data\ball3_p1_c3.png ball3_p1_c3.asm -o 1 -m 7 -x -4 -y -8 -t %DTBL%

pause
