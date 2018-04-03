; Prevents the script from functioning outside of Vermintide 2
#if WinActive("Vermintide 2")

/*
This produces the initial popup to inform the user of the state of 'Swiftbow mode'
and of the quick fix for when it applies to the melee weapon and not the ranged weapon
as well as how to end the script process.
*/
MsgBox, 0, Vermintide 2 Comprehensive Macro,
(
Swiftbow mode is OFF.
Press B with your melee weapon equipped to toggle.
Note: Weapon swap must be bound to T.

If you can't charged attack with your melee weapon, press N.

Swiftbow mode Hotkeys are disabled when typing in-game and all Hotkeys are disabled when not in the Vermintide 2 window.

Page Down will suspend the script and End will terminate the script.
),

; Autoclicker for Swiftbow mode.
Hotkey, LButton, Toggle ; Sets LButton to 'Off' initially as every character spawns with their melee weapon equipped.
SwiftOn := False ; Declares the variable SwiftOn and sets it to True

; Spams LMB while LMB is held down.
LButton::
   While GetKeyState("LButton","P")
	  Send {LButton}
	return
; Changes the state of the variable SwiftOn to the opposite of itself (True or False) and gives the user a popup.
b::
	If SwiftOn
		ToolTip, Swiftbow mode is OFF.`nPress B to toggle., 300, 200
	Else
		ToolTip, Swiftbow mode is ON.`nPress B to toggle., 300, 200
	SwiftOn :=! SwiftOn
	Sleep 900
	ToolTip
	return
; If SwiftOn is True, toggles the Hotkey LButton off on weapon switch to allow charged attacks with melee weapon.
q::
	If SwiftOn
		Hotkey, LButton, Toggle
	Send {t}
	return

; Quick fix for Swiftbow mode being applied to the melee weapon instead of the ranged weapon.
n::
	Hotkey, LButton, Toggle
	return

; Hotkeys to preserve the ability to type in in-game chat.
Enter::
	Hotkey, q, Toggle
	Hotkey, b, Toggle
	Send {Enter}
NumpadEnter::
	Hotkey, q, Toggle
	Hotkey, b, Toggle
	Send {NumpadEnter}
y::
	Hotkey, q, Toggle
	Hotkey, b, Toggle
	Send {y}

; Use wheeldown to dodge. Shift is the normal in game bind.
*WheelDown::
	sendinput {shift}

; Use wheelup to spam light attack to prevent repetitive strain injury.
*WheelUp::
	MouseClick

; Page Down suspends the script.
PgDn::
	suspend

; End terminates the script.
End::
	ExitApp
