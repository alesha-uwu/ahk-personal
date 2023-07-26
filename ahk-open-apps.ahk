#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;open programs when a certain key is pressed

;Spotify

^F1::
  IfWinExist ahk_exe spotify.exe
    winactivate ahk_exe spotify.exe
  else
    run, "spotify"
return

;Discord

^F2::
  IfWinExist ahk_exe Discord.exe
    winactivate ahk_exe Discord.exe
  else
    run, "C:\Users\pierc\AppData\Local\Discord\app-1.0.9015\Discord.exe"
return

;Firefox

^F3::
  IfWinExist ahk_exe firefox.exe
    winactivate ahk_exe firefox.exe
  else
    run, "C:\Program Files\Mozilla Firefox\firefox.exe"
return

;Obsidian

^F4::
  IfWinExist ahk_exe Obsidian.exe
    winactivate ahk_exe Obsidian.exe
  else
    run, "C:\Users\pierc\AppData\Local\Obsidian\Obsidian.exe"
return

;Notepadd ++

^F5::
  IfWinExist ahk_exe notepad++.exe
    winactivate ahk_exe notepad++.exe
  else
    run, "C:\Program Files\Notepad++\notepad++.exe"
return

;Cloudflare Warp

^F6::
  IfWinExist ahk_exe Cloudflare WARP.exe
    winactivate ahk_exe Cloudflare WARP.exe
  else
    run, "C:\Program Files\Cloudflare\Cloudflare WARP\Cloudflare WARP.exe"
return

;GitHub

^F7::
  IfWinExist ahk_exe GitHubDesktop.exe
    winactivate ahk_exe GitHubDesktop.exe
  else
    run, "C:\Users\pierc\AppData\Local\GitHubDesktop\GitHubDesktop.exe"
return

;Outlook

^F8::
  IfWinExist ahk_exe OUTLOOK.exe
    winactivate ahk_exe OUTLOOK.exe
  else
    run, "C:\Program Files\Microsoft Office\root\Office16\OUTLOOK.exe"
return

;Youtube

^F9::
  run, https://youtube.com
return

;KeePass

^F10::
  IfWinExist ahk_exe KeePass.exe
    winactivate ahk_exe KeePass.exe
  else
    run, "C:\Program Files\KeePass Password Safe 2\KeePass.exe"
return


