@echo off 
REM 
REM Path to WinRAR executable in Program Files. Change if location is different
REM ---------------------- WinRAR Directory ------------------------------------
set rardirectory="C:\Program Files\WinRAR\Rar.exe"
REM ----------------------------------------------------------------------------
REM 
REM ---------------------- Par2 Directory --------------------------------------
REM set par2directory="C:\Users\Martin\Desktop\ngPost_bluray\par2j64.exe"
REM ----------------------------------------------------------------------------
REM 
REM ---------------------- Par2 Directory --------------------------------------
set par2directory="C:\Users\Martin\Desktop\ngPost_bluray\par2.exe"
REM ----------------------------------------------------------------------------
REM 
REM ---------------------- SFV Directory ---------------------------------------
set sfvdirectory="C:\Users\Martin\Desktop\ngPost_bluray\quicksfv.exe"
REM ----------------------------------------------------------------------------
REM 
REM ---------------------- Source Directory ------------------------------------
echo "Source Path"
set /p source=" "
REM ----------------------------------------------------------------------------
REM 
REM ---------------------- Folder Name -----------------------------------------
echo "Folder Name"
set /p foldername=" "
REM ----------------------------------------------------------------------------
REM 
REM ---------------------- Arcive Name -----------------------------------------
echo "Arcive Name"
set /p archivename=" "
REM ----------------------------------------------------------------------------
REM 
REM ---------------------- Arcive Password -------------------------------------
echo "Arcive Password"
set /p archivepassword=" "
REM ----------------------------------------------------------------------------
REM 
REM ---------------------- Destination Directory -------------------------------
echo "Destination Path"
set destination="C:\Users\Martin\Desktop\ngPost_bluray\tmp\%foldername%"
REM ----------------------------------------------------------------------------
REM 
REM ---------------------- Check Directory -------------------------------------
if not exist %destination% mkdir %destination%
REM ----------------------------------------------------------------------------
REM 
REM ----------------------------------------------------------------------------
cd %destination%
REM ----------------------------------------------------------------------------
REM 
REM ----------------------------------------------------------------------------
%rardirectory% a -ep1 -r -idp -m0 -v100m -p%archivepassword% %destination%\%archivename% %source%
REM ----------------------------------------------------------------------------
REM 
REM ----------------------------------------------------------------------------
REM %par2directory% c -ls -m1024 -rr15 %destination%\%archivename% %destination%\%archivename%*.rar
REM ----------------------------------------------------------------------------
REM 
REM ----------------------------------------------------------------------------
%par2directory% c -l -q -m1024 -r15 %destination%\%archivename% %destination%\%archivename%*.rar
REM ----------------------------------------------------------------------------
REM 
REM ----------------------------------------------------------------------------
%sfvdirectory% -c %archivename%.sfv *.*
REM ----------------------------------------------------------------------------
REM 
pause
REM 
REM --------------------------- exit -------------------------------------------
REM 
EXIT /B 0
