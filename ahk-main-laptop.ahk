#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; start and stop

^!p::Suspend

; text search

^!n::
clip := clipboard
Sleep, 50
SendInput, ^c
Sleep, 50
url := "https://www.google.com/search?q="
is_it_an_url := SubStr(clipboard, 1 , 8)
if (is_it_an_url = "https://") {   ; if it starts with "https://" go to, rather than search in google search
	run, %clipboard%
}
else { ;search using google search
	joined_url = %url%%clipboard%
	run, %joined_url%
	}
clipboard := clip ;put the last copied thing back in the clipboard
return

^!+n::
clip := clipboard
Sleep, 50
SendInput, ^c
Sleep, 50
url := "https://search.brave.com/search?q="
is_it_an_url := SubStr(clipboard, 1 , 8)
if (is_it_an_url = "https://") {   ; if it starts with "https://" go to, rather than search in google search
	run, %clipboard%
}
else { ;search using google search
	joined_url = %url%%clipboard%
	run, %joined_url%
	}
clipboard := clip ;put the last copied thing back in the clipboard
return

; spotify controls

^!q::Media_Prev
^!w::Media_Play_Pause
^!e::Media_Next
^!a::SoundSet +1
^!d::SoundSet -1

; capslock edit

CapsLock:: Send {BackSpace}
^CapsLock:: Send ^{BackSpace}
+CapsLock:: SetCapsLockState % !GetKeyState("CapsLock", "T")

; abbreviations

::yb::you bet.
::unf::unfortunate

; wasd to mouse
	
^!i::
^!j::
^!k::
^!l::
loop 
{
	if getkeystate("i")
		DllCall("mouse_event", uint, 1, int, 0, int, -8, uint, 0, int, 0)
	if getkeystate("j")
		DllCall("mouse_event", uint, 1, int, -8, int, 0, uint, 0, int, 0)
	if getkeystate("k")
		DllCall("mouse_event", uint, 1, int, 0, int, 8, uint, 0, int, 0)
	if getkeystate("l")		
		DllCall("mouse_event", uint, 1, int, 8, int, 0, uint, 0, int, 0)
	sleep 10	; increase/decrease this to adjust the repeat rate
} until !(getkeystate("i") || getkeystate("j") || getkeystate("k") || getkeystate("l"))
return

^!z::
^!x::
^!c::
loop
{
	if getkeystate("z")		
		Send, {LButton}
	if getkeystate("x")		
		Send, {MButton}
	if getkeystate("c")		
		Send, {RButton}
	sleep 350	; increase/decrease this to adjust the repeat rate
} until !(getkeystate("z") || getkeystate("x") || getkeystate("c"))
return 

;pin window to be always on top

^space::
  Winset, Alwaysontop, , A
return

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