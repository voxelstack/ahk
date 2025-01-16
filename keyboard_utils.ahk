; OS-level remaps
; CapsLock::Control
; RAlt::F13

; Script controls
F13 & F12::Suspend 

; Navigation
F13 & p::Up
F13 & n::Down 

F13 & f::Right
F13 & b::Left

F13 & e::End
F13 & a::Home

; Editing
F13 & d::Delete
F13 & h::BackSpace

; Selecting
; Toggle selecting
~F13 & s::
Selecting := !Selecting
If Selecting
    SendInput {shift down}
Else
    SendInput {shift up}
Return

; Stop selecting when F13 is released
F13 Up::
If Selecting
{
    Selecting := false
    SendInput {shift up}
}
Return

; Input
F13 & '::`

; Hotstrings for Portuguese diacritics
; Send the original key if followed by space
:*cr:' ::'
:*cr:^ ::^
:*cr:~ ::~
:*cr:``` ::``

:*?cr:'a::á
:*?cr:^a::â
:*?cr:~a::ã
:*?cr:``a::à
:*?cr:'c::ç
:*?cr:'e::é
:*?cr:^e::ê
:*?cr:'i::í
:*?cr:'o::ó
:*?cr:^o::ô
:*?cr:~o::õ
:*?cr:'u::ú

:*?CR:'A::Á
:*?CR:^A::Â
:*?CR:~A::Ã
:*?CR:``A::À
:*?CR:'C::Ç
:*?CR:'E::É
:*?CR:^E::Ê
:*?CR:'I::Í
:*?CR:'O::Ó
:*?CR:^O::Ô
:*?CR:~O::Õ
:*?CR:'U::Ú
