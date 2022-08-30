#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

; arrow key
SetCapsLockState, AlwaysOff

#If GetKeyState("CapsLock", "P")
    h::Left
j::Down
k::Up
l::Right
#If

;escape key
*CapsLock::
    KeyWait, CapsLock
    IF A_ThisHotkey = *CapsLock
        Send, {Escape}
Return

;` key rebind
Escape::`

RControl::CapsLock

; numpad
`::`
` & j::Numpad4
` & k::Numpad5
` & l::Numpad6

` & i::Numpad7
` & o::Numpad8
` & p::Numpad9

` & n::Numpad1
` & m::Numpad2
` & ,::Numpad3

` & Space::Numpad0
` & RAlt::NumpadDot
