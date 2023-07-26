#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

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
	if getkeystate("z")		
		Send, {LButton}
	if getkeystate("c")		
		Send, {RButton}
	sleep 350	; increase/decrease this to adjust the repeat rate
} until !(getkeystate("z") || getkeystate("x") || getkeystate("c"))
return 