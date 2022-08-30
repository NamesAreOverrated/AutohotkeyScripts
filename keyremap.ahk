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

RControl::CapsLock
;` key rebind
Escape::`

; numpad

Escape & j::Numpad4
Escape & k::Numpad5
Escape & l::Numpad6

Escape & i::Numpad7
Escape & o::Numpad8
Escape & p::Numpad9

Escape & n::Numpad1
Escape & m::Numpad2
Escape & ,::Numpad3

Escape & Space::Numpad0
Escape & RAlt::NumpadDot

