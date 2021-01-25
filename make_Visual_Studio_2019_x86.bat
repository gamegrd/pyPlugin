@ECHO OFF
call "C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Auxiliary\Build\vcvarsall.bat" x86
Title Debug
:BEGIN
mkdir build
cd build
mkdir msvc16
cd msvc16
cmake -D Debug=on ..\..\ -G"Visual Studio 16 2019"  -A Win32
cd ..\..\
echo %cd%
echo ========================OK====================
pause
goto BEGIN