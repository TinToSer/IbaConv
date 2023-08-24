@echo off
REM Developed by TinToSer
echo ####################################################
echo       Converts To & Fro to various File formats using IbaAnalyzer
echo ####################################By:TinToSer(https://github.com/TinToSer)
echo:
echo:


REM ############---USER SETTINGS---####################################################

set target_folder=""

REM ###----Select file type to search in folders
set source_file_type=dat

set target_pdo=COMTRADE.pdo

REM ####################################################################################
for %%f in (%target_folder%\*.%source_file_type%) do (
    echo Processing:- %%f
    "C:\Program Files\iba\ibaAnalyzer\ibaAnalyzer.exe" "%%f" "%~dp0%target_pdo%" /extract:"%target_folder%\%%~nf_conv"
)
pause