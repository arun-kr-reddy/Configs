@echo off

REM ============================ Winget ============================
REM https://winstall.app/
winget install --exact --silent --id 7zip.7zip
winget install --exact --silent --id Git.Git
winget install --exact --silent --id jely2002.youtube-dl-gui
winget install --exact --silent --id MediaArea.MediaInfo.GUI
winget install --exact --silent --id Microsoft.PowerShell
winget install --exact --silent --id Microsoft.VisualStudioCode
winget install --exact --silent --id Microsoft.WindowsTerminal
winget install --exact --silent --id Mozilla.Firefox
winget install --exact --silent --id mpv.net
winget install --silent MusicBee
winget install --exact --silent --id qBittorrent.qBittorrent
winget install --exact --silent --id RazerInc.RazerInstaller.Synapse4
winget install --exact --silent --id TheDocumentFoundation.LibreOffice
winget install --exact --silent --id TorProject.TorBrowser
winget install --exact --silent --id Valve.Steam
winget install --exact --silent --id xanderfrangos.twinkletray

REM ============================ Settings ============================
REM Remove Bing Results From Search
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v BingSearchEnabled /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Policies\Microsoft\Windows\Explorer" /v DisableSearchBoxSuggestions /t REG_DWORD /d 1 /f
REM Win 10 Context Menu
reg add "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f /ve
REM Restart Explorer
taskkill /f /im explorer.exe
start explorer.exe

pause