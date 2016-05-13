@echo off

if not defined GSWIN (
  echo Please set GSWIN environment variable. Example value: "C:\Program Files\gs\gs9.16\bin\gswin64.exe"
  exit /b
)

if not defined GSWIN_LIBDIR (
  echo Please set GSWIN_LIBDIR environment variable. Example value: "C:\Program Files\gs\gs9.16\lib"
  exit /b
)

set MYUSAGE=Usage: %0 Input.jpg Output.pdf (do not use paths beginning with a dot)
if -%1-==-- goto show_usage
if -%2-==-- goto show_usage
goto exec_script

:show_usage
echo %MYUSAGE%
exit /b

:exec_script
"%GSWIN%" -q -dBATCH -sDEVICE=pdfwrite -sOutputFile=%2 "%GSWIN_LIBDIR%\viewjpeg.ps" -c "(%1) viewJPEG"
