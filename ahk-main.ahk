#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; start and stop

Suspend
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

^!a::Media_Prev
^!z::Media_Play_Pause
^!e::Media_Next
^!q::SoundSet +1
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

^!w::
^!x::
^!c::
loop
{
	if getkeystate("x")		
		Send, {MButton}
	if getkeystate("w")		
		Send, {LButton}
	if getkeystate("c")		
		Send, {RButton}
	sleep 350	; increase/decrease this to adjust the repeat rate
} until !(getkeystate("w") || getkeystate("x") || getkeystate("c"))
return 

;pin window to be always on top

^space::
  Winset, Alwaysontop, , A
return