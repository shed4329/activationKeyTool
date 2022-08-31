@echo off
title Office 2019 零售到批量许可证转换器
chcp 65001
:ADMIN
openfiles >nul 2>nul ||(
echo CreateObject^("Shell.Application"^).ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"
"%temp%\getadmin.vbs" >nul 2>&1
goto:eof
)
del /f /q "%temp%\getadmin.vbs" >nul 2>nul
cls
echo ============================================================================
echo # Office 2019 零售到批量许可证转换器
echo.
echo # 支持：
echo - Microsoft Office Standard 2019
echo - Microsoft Office Professional Plus 2019
echo ============================================================================
echo # 按任意键开始转换
echo.
pause >nul
echo.
if exist "%ProgramFiles%\Microsoft Office\Office16\ospp.vbs" cd /d "%ProgramFiles%\Microsoft Office\Office16"
if exist "%ProgramFiles(x86)%\Microsoft Office\Office16\ospp.vbs" cd /d "%ProgramFiles(x86)%\Microsoft Office\Office16"
for /f %%x in ('dir /b ..\root\Licenses16\ProPlus2019VL*.xrm-ms') do cscript ospp.vbs /inslic:"..\root\Licenses16\%%x"
echo.
echo.
cls
echo ============================================================================
echo # 转换完成，按任意键退出
echo ============================================================================
pause >nul