;https://github.com/evilC/AutoHotInterception
;for second keyboard


#UseHook On
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
#MaxThreadsPerHotkey 2
#SingleInstance force
#Persistent
#include AutoHotInterception\Lib\AutoHotInterception.ahk

AHI := new AutoHotInterception()
id1 := AHI.GetKeyboardId(0x1C4F, 0x0002, 1)
cm1 := AHI.CreateContextManager(id1)
reinfMode := false
secondaryMode := false
SetNumLockState, On

F12::
Suspend ; F12 Enables/disables the hotkeys
return

F11::
;for furute development, a help window showing the commands of each key (by storing them in array and printing text on the gui)
Gui, Add, Picture, w300 h300, help.png
Gui, +AlwaysOnTop -Border -SysMenu +Owner -Caption +ToolWindow
Gui, show, NoActivate X1500 Y780 autosize
SetTimer, DestroyGui, 2000
return

DestroyGui:
Gui, Destroy
SetTimer, DestroyGui, Off
return

;with numlock and scrollock we can create 4 "modes" for the keypad
NumLock::
;toggle standard text entry mode (from commands to text and back)
SetNumLockState % !GetKeyState("NumLock", "T") ;keep numlock functionality
reinfMode := !reinfMode
if reinfMode
	ToolTip, Text entry mode ON
else
	ToolTip, Text entry mode OFF
SetTimer, RemoveToolTip, -1000
return

ScrollLock::
;toggle secondary mode (more commands or text)
secondaryMode := !secondaryMode
if secondaryMode
	ToolTip, Secondary mode ON
else
	ToolTip, Secondary mode OFF
SetTimer, RemoveToolTip, -1000
return

RemoveToolTip:
ToolTip
return

; If the input comes from the keypad
#if cm1.IsActive
Numpad1::
NumpadEnd::
if(reinfMode){
	if(secondaryMode){
		;not used
	}else{
		send, Y10/10{Enter}
	}
}else{
	if(secondaryMode){
		send, z{Enter}s{Enter}1000/100xp{Enter}
	}else{
		send, stretch{Enter}
	}
}
return

Numpad2::
NumpadDown::
if(reinfMode){
	if(secondaryMode){
		;not used
	}else{
		send, 2Y20{Enter}
	}
}else{
	if(secondaryMode){
		send, z{Enter}s{Enter}1000/20xp{Enter}
	}else{
		send, fillet{Enter}r{Enter}0.03{Enter}
	}
}
return

Numpad3::
NumpadPgDn::
if(reinfMode){
	if(secondaryMode){
		send, {Esc}
	}else{
		send, 3Y20{Enter}
	}
}else{
	if(secondaryMode){
		send, z{Enter}s{Enter}1000/30xp{Enter}
	}else{
		send, fillet{Enter}r{Enter}0{Enter}
	}
}
return


Numpad4::
NumpadLeft::
if(reinfMode){
	if(secondaryMode){
		send, {Esc}
	}else{
		send, 4Y20{Enter}
	}
}else{
	if(secondaryMode){
		send z{Enter}s{Enter}1000/40xp{Enter}
	}else{
		send, copy{Enter}
	}
}
return


Numpad5::
NumpadClear::
if(reinfMode){
	if(secondaryMode){
		send, {Esc}
	}else{
		send, 5Y20{Enter}
	}
}else{
	if(secondaryMode){
		send z{Enter}s{Enter}1000/50xp{Enter}
	}else{
		send, move{Enter}
	}
}
return


Numpad6::
NumpadRight::

if(reinfMode){
	if(secondaryMode){
		send, {Esc}
	}else{
		send, 6Y20{Enter}
	}
}else{
	if(secondaryMode){
		send z{Enter}s{Enter}1000/200xp{Enter}
	}else{
		send, dimlinear{Enter}
	}
}
return


Numpad7::
NumpadHome::
if(reinfMode){
	if(secondaryMode){
		send, {Esc}
	}else{
		send, 7Y20{Enter}
	}
}else{
	if(secondaryMode){
		send z{Enter}s{Enter}1000/1000xp{Enter}
	}else{
		send, pline{Enter}
	}
}
return


Numpad8::
NumpadUp::
if(reinfMode){
	if(secondaryMode){
		send, {Esc}
	}else{
		send, 8Y20{Enter}
	}
}else{
	if(secondaryMode){
		send z{Enter}s{Enter}2000/1000xp{Enter}
	}else{
		send, trim{Enter}
	}
}
return

Numpad9::
NumpadPgUp::
if(reinfMode){
	if(secondaryMode){
		send, {Esc}
	}else{
		send, 2Y12/10{Enter}
	}
}else{
	if(secondaryMode){
		send, vpclip{Enter}
	}else{
		send, matchprop{Enter}
	}
}
return


Numpad0::
NumpadIns::
if(reinfMode){
	if(secondaryMode){
		send, {Esc}
	}else{
		send,   - {Enter}
	}
}else{
	if(secondaryMode){
		send z{Enter}e{Enter}
	}else{
		send, rotate{Enter}
	}
}
return


NumpadDot::
NumpadDel::
if(reinfMode){
	if(secondaryMode){
		send, {Esc}
	}else{
		send, 2Y12/10{Enter}
	}
}else{
	if(secondaryMode){
		send, {Esc}
	}else{
		send, offset{Enter}
	}
}
return


Backspace::
send,{Delete}
return


NumpadDiv::
if(reinfMode){
	if(secondaryMode){
		send, Y10/10{Esc}
	}else{
		send, Y10/10{Enter}
	}
}else{
	if(secondaryMode){
		send, {Esc}
	}else{
		send, explode{Enter}
	}
}
return


NumpadMult::
if(reinfMode){
	if(secondaryMode){
		send, Y8/10{Esc}
	}else{
		send, 90x80{Enter}
	}
}else{
	if(secondaryMode){
		send, {Esc}
	}else{
		send, {F3}
	}
}
return


NumpadSub::
if(reinfMode){
	if(secondaryMode){
		send, {Esc}
	}else{
		send,   - {Enter}
	}
}else{
	if(secondaryMode){
		send, {Esc}
	}else{
		send, {F10}
	}
}
return


NumpadAdd::
if(reinfMode){
	if(secondaryMode){
		send, 2Y8/10{Esc}
	}else{
		send, 2Y8/10{Enter}
	}
}else{
	if(secondaryMode){
		send, {Esc}
	}else{
		send, {F8}
	}
}
return

#if

; Map mouse button 4 (back) to esc
#ifWinActive ahk_class AfxMDIFrame140u
XButton1:: 
send, {Esc}
return

; Mouse button 5 (forward) to return
#ifWinActive ahk_class AfxMDIFrame140u
XButton2::
Send, {DEL Down} ; far side mouse
return

#ifWinActive ahk_class AfxMDIFrame140u
XButton2 Up::
Send, {DEL Up}
return

