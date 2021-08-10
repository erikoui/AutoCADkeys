#include Lib\AutoHotInterception.ahk

keyboard1Id := AHI.GetKeyboardId(0x1C4F, 0x0002)
cm1 := AHI.CreateContextManager(keyboard1Id)

#if cm1.IsActive	; Start the #if block
::aaa::JACKPOT
NumPadEnd:: 
	ToolTip % "KEY DOWN EVENT @ " A_TickCount
	return
	
NumPadEnd up::
	ToolTip % "KEY UP EVENT @ " A_TickCount
	return
#if			; Close the #if block
