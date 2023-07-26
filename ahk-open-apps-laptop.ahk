#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;open programs when a certain key is pressed

;Spotify

^!1::
  IfWinExist ahk_exe spotify.exe
    winactivate ahk_exe spotify.exe
  else
    run, "spotify"
return

;Discord

^!2::
  IfWinExist ahk_exe Discord.exe
    winactivate ahk_exe Discord.exe
  else
    run, "C:\Users\pierc\AppData\Local\Discord\app-1.0.9015\Discord.exe"
return

;Firefox

^!3::
  IfWinExist ahk_exe firefox.exe
    winactivate ahk_exe firefox.exe
  else
    run, "C:\Program Files\Mozilla Firefox\firefox.exe"
return

;Obsidian

^!4::
  IfWinExist ahk_exe Obsidian.exe
    winactivate ahk_exe Obsidian.exe
  else
    run, "C:\Users\pierc\AppData\Local\Obsidian\Obsidian.exe"
return

;Notepadd ++

^!5::
  IfWinExist ahk_exe notepad++.exe
    winactivate ahk_exe notepad++.exe
  else
    run, "C:\Program Files\Notepad++\notepad++.exe"
return

;Cloudflare Warp

^!6::
  IfWinExist ahk_exe Cloudflare WARP.exe
    winactivate ahk_exe Cloudflare WARP.exe
  else
    run, "C:\Program Files\Cloudflare\Cloudflare WARP\Cloudflare WARP.exe"
return

;GitHub

^!7::
  IfWinExist ahk_exe GitHubDesktop.exe
    winactivate ahk_exe GitHubDesktop.exe
  else
    run, "C:\Users\pierc\AppData\Local\GitHubDesktop\GitHubDesktop.exe"
return

;Outlook

^!8::
  IfWinExist ahk_exe OUTLOOK.exe
    winactivate ahk_exe OUTLOOK.exe
  else
    run, "C:\Program Files\Microsoft Office\root\Office16\OUTLOOK.exe"
return

;Youtube

^!9::
  run, https://youtube.com
return

;KeePass

^!0::
  IfWinExist ahk_exe KeePass.exe
    winactivate ahk_exe KeePass.exe
  else
    run, "C:\Program Files\KeePass Password Safe 2\KeePass.exe"
return


