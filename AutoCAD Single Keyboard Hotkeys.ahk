;https://github.com/evilC/AutoHotInterception
;for second keyboard

#UseHook On
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.

+F5::Edit ; Shift-F5 launches the current AutoHotkey script in preferred editor, else Notepad 
^F5::Reload ; Ctrl-F5 reloads the current AutoHotKey scripts after any edits.
F12::Suspend ; Alt-F5 Enables/disables the hotkeys

; Zoom to scale (for layouts) - ctrl+shift+(numbers)
^+1::send z{Enter}s{Enter}1000/100xp{Enter} 
^+2::send z{Enter}s{Enter}1000/20xp{Enter}
^+3::send z{Enter}s{Enter}1000/30xp{Enter}
^+4::send z{Enter}s{Enter}1000/40xp{Enter}
^+5::send z{Enter}s{Enter}1000/50xp{Enter}
^+6::send z{Enter}s{Enter}1000/200xp{Enter}
^+7::send z{Enter}s{Enter}1000/1000xp{Enter}
^+8::send z{Enter}s{Enter}2000/1000xp{Enter}
Numpad0::send z{Enter}e{Enter}

; Drawing Commands
q::
send, pline{Enter}
return
w::
send, trim{Enter}
return
e::
send, matchprop{Enter}
return
a::
send, copy{Enter}
return
s::
send, move{Enter}
return
c::
send, fillet{Enter}r{Enter}0.03{Enter}
return
v::
send, fillet{Enter}r{Enter}0{Enter}
return
r::
send, {F8}
return
+r::
send, {F3}
return
x::
send, explode{Enter}
return
z::
send, stretch{Enter}
return
d::
send, dimlinear{Enter}
return
f::
send, {Delete}
return
p::
send, vpclip{Enter}
return
y::
send, Y12/15{Enter}
return
u::
send, Y12/20{Enter}
return
t::
send, Y12/10{Enter}
return
g::
send, Y14/10{Enter}
return
h::
send, 250{Enter}
return
j::
send, 200{Enter}
return


; Map mouse button 4 (back) to esc
XButton1:: 
send, {Esc}
return

; Mouse button 5 (forward) to return
XButton2::
Send, {DEL Down} ; far side mouse
return
XButton2 Up::
Send, {DEL Up}
return

; Map tab to undo
Tab::
Send ^z 
return
