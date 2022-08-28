#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

; arrow key
CapsLock & j::Down
CapsLock & k::Up
CapsLock & l:: Right
CapsLock & h::Left

;escapremap
CapsLock::Esc
RControl::CapsLock

; numpad
`::`
` & L::Numpad4
` & `;::Numpad5
` & '::Numpad6

` & P::Numpad7
` & [::Numpad8
` & ]::Numpad9

` & ,::Numpad1
` & .::Numpad2
` & /::Numpad3

` & Space::Numpad0
` & RAlt::NumpadDot