@ECHO OFF
SETLOCAL ENABLEEXTENSIONS

SET user=%1
SET passwd=%2

reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Winlogon" /v AutoAdminLogon /t REG_SZ /d "1"
reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Winlogon" /v DefaultUserName /t REG_SZ /d %user%
reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Winlogon" /v DefaultPassword /t REG_SZ /d %passwd%
reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Winlogon" /v DefaultDomainName /t REG_SZ /d "Win10VM"

ENDLOCAL
EXIT /B 0

:END
echo "Username/Password mandatory!"
EXIT /B 1