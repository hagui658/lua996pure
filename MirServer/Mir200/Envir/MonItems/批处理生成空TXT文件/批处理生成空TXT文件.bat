@echo off
pushd "%~dp0"
if exist ".\0_���й���.txt" (
   md ".\�б�" >nul 2>nul
   for /f "delims=" %%a in ('type 0_���й���.txt') do (
      cd.>".\�б�\%%a.txt"
   )
)
popd
exit