:: Node parameters
echo off
SETLOCAL
SET BINARY_NAME_UNIX=formula.sh
SET BINARY_NAME_WINDOWS=formula.bat
SET DIST=..\dist
SET DIST_DIR=%DIST%\commons\bin
:build
    mkdir %DIST_DIR%
	more +1 run_template > %DIST_DIR%\%BINARY_NAME_WINDOWS%
    copy run_template %DIST_DIR%\%BINARY_NAME_UNIX%
    xcopy . %DIST_DIR% /E /H /C /I
    GOTO DONE
:DONE