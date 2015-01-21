@echo off
if "%1" == "edit" start C:\WINDOWS\system32\cmd.exe /c "sublime_text D:\Scripts\ss.bat"
if "%1" == "scripts" %SystemRoot%\explorer.exe "D:\Scripts"
if "%1" == "javalib" %SystemRoot%\explorer.exe "D:\Programming\Java\Libraries"
if "%1" == "dx" %SystemRoot%\explorer.exe "C:\Users\mikha_000\Dropbox"
if "%1" == "catan" %SystemRoot%\explorer.exe "D:\Projects\Browser-Based Catan"
if "%1" == "projects" %SystemRoot%\explorer.exe "D:\Projects"
exit
