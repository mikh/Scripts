@echo off
set "str1=%~dp0"
echo.%str1%
set "str2=C:\Cantrip Industries\Auto Bing"

md "%str2%"

set "str3=auto_bing.jar"
set "str4=defaults.txt"
set "str5=dictionary.txt"
set "str6=log.txt"
set "str8=run.bat"
set "str9=uninstall.bat"

set "str7=%str1%%str3%"
move "%str7%" "%str2%"

set "str7=%str1%%str4%"
move "%str7%" "%str2%"

set "str7=%str1%%str5%"
move "%str7%" "%str2%"

set "str7=%str1%%str6%"
move "%str7%" "%str2%"

set "str7=%str1%%str8%"
move "%str7%" "%str2%"

set "str7=%str1%%str9%"
move "%str7%" "%str2%"

pause