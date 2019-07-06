@echo off

SET WDIR=%~dp0
cd %WDIR%

SET MCMD=bin\make2d.exe

call %WDIR%\make.bat

cd %WDIR%

SET SRC=x1sgl.bin
SET DST=x1sgl.2d
SET BOOTNAME=X1Balls

echo データバイナリ: %SRC%
echo 出力2Dファイル: %DST%

%MCMD% %DST% %SRC% -n %BOOTNAME%

SET DCMD=bin\x12d_d88.exe
SET D88FILE=x1balls.d88

%DCMD% %DST% %D88FILE%

pause
