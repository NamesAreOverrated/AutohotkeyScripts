#Requires AutoHotkey v2.0
CoordMode "Mouse", "Screen"
SetCapsLockState "AlwaysOff"

XButton1::LShift
XButton2::LCtrl

; arrow key

CapsLock::Escape
CapsLock & h::Left
CapsLock & j::Down
CapsLock & k::Up
CapsLock & l::Right

CapsLock & p::PgUp
CapsLock & n::PgDn
CapsLock & i::Home
CapsLock & a::End
CapsLock & d::Delete

CapsLock & 1::F1
CapsLock & 2::F2
CapsLock & 3::F3
CapsLock & 4::F4
CapsLock & 5::F5
CapsLock & 6::F6
CapsLock & 7::F7
CapsLock & 8::F8
CapsLock & 9::F9
CapsLock & 0::F10
CapsLock & -::F11
CapsLock & =::F12

RControl::CapsLock
;` key rebind
Escape::`

; volume
Escape & +::Volume_Up
Escape & -:: Volume_Down
Escape & backSpace::Volume_Mute

;mouse 

MouseMutiplier := 1
Escape & j::{
    Loop{
        If GetkeyState("j","P"){
            MouseGetPos &X, &Y
            Y:=Y + 5*MouseMutiplier
            MouseMutiplier+=0.2
            DllCall("SetCursorPos", "int", X, "int", Y) 
            Sleep 15
        }
        Else{
            global MouseMutiplier:=1
            Break
        }
    }
    Return 

}

Escape & k::{
    Loop{
        If GetkeyState("k","P"){
            MouseGetPos &X, &Y
            Y:=Y - 5*MouseMutiplier
            MouseMutiplier+=0.2
            DllCall("SetCursorPos", "int", X, "int", Y) 
            Sleep 15
        }
        Else{
            global MouseMutiplier:=1
            Break
        }
    }
    Return 
}

Escape & h::{
    Loop{
        If GetkeyState("h","P"){
            MouseGetPos &X, &Y
            X:=X-5*MouseMutiplier
            MouseMutiplier+=0.2
            DllCall("SetCursorPos", "int", X, "int", Y)
            Sleep 15
        }
        Else{
            global MouseMutiplier:=1
            Break
        }
    }
    Return
}
Escape & l::{
    Loop{
        If GetkeyState("l","P"){
            MouseGetPos &X, &Y
            X:=X+5*MouseMutiplier
            MouseMutiplier+=0.2
            DllCall("SetCursorPos", "int", X, "int", Y)
            Sleep 15
        }
        Else{
            global MouseMutiplier:=1
            Break
        }
    }
    Return
}

Escape & f:: {
    Loop{
        If GetkeyState("f","P"){
            Send "{WheelUp}" 
            Sleep 100
        }
        Else{
            Break
        }
    }
    Return
}
Escape & b::{
    Loop{
        If GetkeyState("b","P"){
            Send "{WheelDown}" 
            Sleep 100
        }
        Else{
            Break
        }
    }
    Return
}
Escape & Space::{ 
    Click "Down" 
    KeyWait "Space"
    Click "Up"
    Return
}
Escape & RAlt::Click "Right"
