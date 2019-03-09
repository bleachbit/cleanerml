@echo off
if "%1"=="" goto shorthelp
if "%1"=="-help" goto help
if "%1"=="-pandt" goto help
if "%1"=="-pending" goto help
if "%1"=="-release" goto help
goto shorthelp

:help
echo.
echo Copyright (C) 2019 by Andrew Ziem and Tobias B. Besemer.  All rights reserved.
echo License is GNU GPL version 3 or later - http://gnu.org/licenses/gpl.html.
echo This is free software: You are free to change and redistribute it.
echo There is NO WARRANTY, to the extent permitted by law.
echo.
echo Based on "Makefile" of Andrew Ziem.
echo.
echo Version: 0.1
echo Date: 2019-03-09
echo.
if "%1"=="-pandt" goto pandt
if "%1"=="-pending" goto pending
if "%1"=="-release" goto release
echo Requirements:
echo - MinGW
echo - msys-libxml2-bin of MinGW and its dependencies
echo - msys-diffutils-bin of MinGW and its dependencies
rem echo - msys-grep-bin of MinGW and its dependencies
echo - Path to MinGW\msys\1.0\bin\ in the system environment variable "path"
echo.
if "%1"=="-help" goto shorthelp

:errorO2
echo [file] missing!

:shorthelp
echo.
echo Makefile.bat makes CleanerML files pretty and test them.
echo.
echo Usage: Makefile.bat [option] [file]
echo        -help : Shows more help
echo        -pandt : Makes the [file] pretty and tests it
echo        -pending : Makes the files in pending pretty and test them
echo        -release : Makes the files in release pretty and test them
echo.
echo CleanerML on GitHub: https://github.com/az0/cleanerml
goto end

:pending
for %%f in (.\pending\*.*) do Makefile.bat -pandt %%f
goto end

:release
for %%f in (.\release\*.*) do Makefile.bat -pandt %%f
goto end

:pandt
if "%2"=="" goto errorO2

rem pretty:
xmllint --format %2 >%2.pretty
diff -q %2 %2.pretty
echo.
echo %2 is pretty now!
echo.
del %2
move %2.pretty %2
echo.

:tests
rem tests:
xmllint --noout --schema ../bleachbit/doc/cleaner_markup_language.xsd %2

:end
