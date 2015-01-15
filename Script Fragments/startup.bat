@echo off
if "%1" == "edit" start C:\WINDOWS\system32\cmd.exe /c "sublime_text C:\Users\mikhail.andreev\Desktop\Files\Scripts\startup.bat"
start /b "" "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
start /b "" "C:\Program Files (x86)\Borland\Delphi7\Bin\delphi32.exe"
start /b "" "C:\Program Files\Sublime Text 3\sublime_text.exe"
start /b "" "C:\Program Files (x86)\Leap Motion\Airspace\Airspace.exe" --disable-gpu --disable-software-rasterizer --skip-gpu-data-loading
exit