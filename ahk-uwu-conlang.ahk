#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;start suspended 

Suspend

;define and set icons

Icon_Active = D:\Auto Hot Key\ahk-personal\ico\conlang-active.ico
Icon_Suspended = D:\Auto Hot Key\ahk-personal\ico\conlang-suspended.ico

IfExist, %Icon_Suspended%
  Menu, Tray, Icon, %Icon_Suspended%
return


;control suspension and change icon

^!m::
Suspend
IF A_ISSUSPENDED = 1
Menu, tray, icon, %Icon_Suspended%, , 1
else if A_ISSUSPENDED = 0
Menu, tray, icon, %Icon_Active%, , 1
return

; uwu conlang
; english to uwu

; uwu to english

::gg::abc