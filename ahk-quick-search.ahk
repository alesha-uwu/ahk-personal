#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

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