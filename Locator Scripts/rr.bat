@echo off
if "%1" == "cmd" ( 
	
	start %SystemRoot%\system32\cmd.exe 
	goto end_script 
)
if "%1" == "maple" (
	start /b "" "C:\Nexon\MapleStory\GameLauncher.exe"
	goto end_script
)
if "%1" == "chrome" ( 
	
	start /b "" "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" 
	goto end_script 
)
if "%1" == "desk" ( 
	
	%SystemRoot%\explorer.exe "C:\Users\mikha_000\Desktop" 
	goto end_script 
)
if "%1" == "dx" ( 
	%SystemRoot%\explorer.exe "C:\Users\mikha_000\Dropbox"
	goto end_script 
)
if "%1" == "dropbox" ( 
	%SystemRoot%\explorer.exe "C:\Users\mikha_000\Dropbox"
	goto end_script 
)
if "%1" == "7z" ( 
	start /b "" "C:\Program Files\7-Zip\7zFM.exe"
	goto end_script 
)
if "%1" == "delphi" ( 
	start /b "" "C:\Program Files (x86)\Borland\Delphi7\Bin\delphi32.exe"	
	goto end_script 
)	
if "%1" == "d7" ( 
	start /b "" "C:\Program Files (x86)\Borland\Delphi7\Bin\delphi32.exe"
	goto end_script 
)
if "%1" == "daemon" ( 
	start /b "" "C:\Program Files (x86)\DAEMON Tools Lite\DTLite.exe"
	goto end_script 
)
if "%1" == "tasks" ( 
	start /b "" "C:\WINDOWS\system32\taskmgr.exe"
	goto end_script 
)
if "%1" == "notepad++" ( 
	start /b "" "C:\Program Files (x86)\Notepad++\notepad++.exe"
	goto end_script 
)
if "%1" == "sublime" ( 
	start /b "" "C:\Program Files\Sublime Text 3\sublime_text.exe"
	goto end_script 
)
if "%1" == "st" ( 
	start /b "" "C:\Program Files\Sublime Text 3\sublime_text.exe"
	goto end_script 
)
::if "%1" == "git" ( 
::	 C:\WINDOWS\system32\cmd.exe /c ""C:\Program Files (x86)\Git\bin\sh.exe" --login -i" 
::	goto end_script 
::)
if "%1" == "firefox" ( 
	start /b "" "C:\Program Files (x86)\Mozilla Firefox\firefox.exe"
	goto end_script 
)
if "%1" == "eclipse" ( 
	start /b "" "C:\Other Programs\Eclipse\Luna\eclipse\eclipse.exe"
	goto end_script 
)
if "%1" == "android" ( 
	start /b "" "C:\Other Programs\Android\eclipse\eclipse.exe"
	goto end_script 
)
if "%1" == "vmplayer" ( 
	start /b "" "C:\Program Files (x86)\VMware\VMware Player\vmplayer.exe"
	goto end_script 
)
if "%1" == "source"	( start /b "" "C:\Program Files (x86)\Atlassian\SourceTree\SourceTree.exe"
	goto end_script 
)
if "%1" == "edit" ( 
	start C:\WINDOWS\system32\cmd.exe /c "sublime_text D:\Scripts\rr.bat"
	goto end_script 
)
if "%1" == "path" ( 
	start /b "" "C:\Other Programs\PathEditor.exe"
	goto end_script 
)
if "%1" == "itunes" ( 
	start /b "" "C:\Program Files (x86)\iTunes\iTunes.exe"
	goto end_script 
)
if "%1" == "araxis"	( start /b "" "C:\Program Files (x86)\Araxis\Araxis Merge\Merge.exe"
	goto end_script 
)
if "%1" == "merge"	( start /b "" "C:\Program Files (x86)\Araxis\Araxis Merge\Merge.exe"
	goto end_script 
)
if "%1" == "vlc" ( 
	start /b "" "C:\Program Files (x86)\VideoLAN\VLC\vlc.exe"
	goto end_script 
)
if "%1" == "virtualbox" ( 
	start /b "" "C:\Program Files\Oracle\VirtualBox\VirtualBox.exe"
	goto end_script 
)
if "%1" == "visualstudio" ( 
	start /b "" "C:\Program Files (x86)\Microsoft Visual Studio 12.0\Common7\IDE\devenv.exe"
	goto end_script 
)
if "%1" == "vs" ( 
	start /b "" "C:\Program Files (x86)\Microsoft Visual Studio 12.0\Common7\IDE\devenv.exe"
	goto end_script 
)
if "%1" == "putty" ( 
	start /b "" "C:\Other Programs\putty.exe"
	goto end_script 
)
if "%1" == "bitdefender" ( 
	start /b "" "C:\Program Files\Bitdefender\Antivirus Free Edition\gziface.exe"
	goto end_script 
)
if "%1" == "word" ( 
	start /b "" "C:\Program Files\Microsoft Office 15\root\office15\WINWORD.EXE"
	goto end_script 
)
if "%1" == "access" ( 
	start /b "" "C:\Program Files\Microsoft Office 15\root\office15\MSACCESS.EXE"
	goto end_script 
)
if "%1" == "excel" ( 
	start /b "" "C:\Program Files\Microsoft Office 15\root\office15\EXCEL.EXE"
	goto end_script 
)
if "%1" == "powerpoint" ( 
	start /b "" "C:\Program Files\Microsoft Office 15\root\office15\POWERPNT.EXE"
	goto end_script 
)
if "%1" == "ppt" ( 
	start /b "" "C:\Program Files\Microsoft Office 15\root\office15\POWERPNT.EXE"
	goto end_script 
)
if "%1" == "foxit" ( 
	start /b "" "C:\Program Files (x86)\Foxit Software\Foxit Reader\Foxit Reader.exe"
	goto end_script 
)
if "%1" == "adobe" ( 
	start /b "" "C:\Program Files (x86)\Adobe\Reader 11.0\Reader\AcroRd32.exe"
	goto end_script 
)
if "%1" == "araxis" ( 
	start /b "" "C:\Program Files\Araxis\Araxis Merge\Merge.exe"
	goto end_script 
)
if "%1" == "merge" ( 
	start /b "" "C:\Program Files\Araxis\Araxis Merge\Merge.exe"
	goto end_script 
)
if "%1" == "photoshop" ( 
	start /b "" "C:\Program Files (x86)\Photoshop\x64\Photoshop.exe"
	goto end_script 
)
if "%1" == "flash" ( 
	start /b "" "C:\Program Files (x86)\Adobe\Adobe Flash CS6\Flash.exe"
	goto end_script 
)
if "%1" == "spotify" ( 
	start /b "" "C:\Users\mikha_000\AppData\Roaming\Spotify\spotify.exe"
	goto end_script 
)
if "%1" == "latex" ( 
	start /b "" "C:\Program Files (x86)\Texmaker\texmaker.exe"
	goto end_script 
)
if "%1" == "evernote" ( 
	start /b "" "C:\Program Files (x86)\Evernote\Evernote\Evernote.exe"
	goto end_script 
)

echo "Command not found."
pause

:end_script
exit



rem	missing better delphi, dreamweaver, virtualbox failed, MATLAB, paint.net

rem link virtualbox

rem bug-tracking software: bugzilla, bugloghq, logdigger, lighthouse, bugify, trac, snowy evening