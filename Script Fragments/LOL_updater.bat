start /b "" "C:\Riot Games\League of Legends\lol.launcher.exe"
sleep.py 3600
taskkill /f /im lol.launcher.exe
taskkill /f /fi "IMAGENAME eq LoLLauncher.exe*" /im *
pause