#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

Coordmode, Mouse, Screen
MouseMutiplier:=1f

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

;Tab
Tab::Tab
;volume
Tab & +::Volume_Up
Tab & -:: Volume_Down
Tab & BackSpace::Volume_Mute

;mouse 

Tab & j::
    Loop{
        If GetkeyState("j","P"){
            MouseGetPos, X, Y
            Y+=5*MouseMutiplier
            MouseMutiplier+=0.2
            DllCall("SetCursorPos", "int", X, "int", Y)
            Sleep, 15
        }
        Else{
            MouseMutiplier=1
            Break
        }
    }
Return 

Tab & k::
    Loop{
        If GetkeyState("k","P"){
            MouseGetPos, X, Y
            Y-=5*MouseMutiplier
            MouseMutiplier+=0.2
            DllCall("SetCursorPos", "int", X, "int", Y)
            Sleep, 15
        }
        Else{
            MouseMutiplier=1
            Break
        }
    }
Return

Tab & h::
    Loop{
        If GetkeyState("h","P"){
            MouseGetPos, X, Y
            X-=5*MouseMutiplier
            MouseMutiplier+=0.2
            DllCall("SetCursorPos", "int", X, "int", Y)
            Sleep, 15
        }
        Else{
            MouseMutiplier=1
            Break
        }
    }
Return

Tab & l::
    Loop{
        If GetkeyState("l","P"){
            MouseGetPos, X, Y
            X+=5*MouseMutiplier
            MouseMutiplier+=0.2
            DllCall("SetCursorPos", "int", X, "int", Y)
            Sleep, 15
        }
        Else{
            MouseMutiplier=1
            Break
        }
    }
Return

Tab & f:: 
    Loop{
        If GetkeyState("f","P"){
            Send, {WheelUp} 
            Sleep, 100
        }
        Else{
            Break
        }
    }
Return
Tab & b::
    Loop{
        If GetkeyState("b","P"){
            Send, {WheelDown} 
            Sleep, 100
        }
        Else{
            Break
        }
    }
Return
Tab & Space:: 
    Click,D 
    KeyWait,Space
    Click,U
Return
Tab & RAlt::Click,Right
Return