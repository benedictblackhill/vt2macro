# vt2macro
Vermintide 2 Comprehensive Macro

This set of hotkeys for Vermintide 2 is based on the AutoHotkey script by [j_sat](youtube.com/jsat7 "YouTube")

Most of j_sats original hotkeys are included and additional functionality has been introduced such as 'Swiftbow mode' and the suspension of all hotkeys while outside the Vermintide 2 window.

The ability to type in in-game chat is retained by toggling the alphanumeric hotkeys (q,b,n) when a default chat key is pressed.

AutoHotkey is required to run this script.

To download AutoHotkey visit http://www.autohotkey.com/

List of Hotkeys:
- q: Weapon swap. Turns off autoclicker to allow charged attacks with melee weapon.
- b: Toggles swiftbow mode on and off. Use while melee weapon is equipped or in a menu.
- n: Quick fix if charged attack is not working for melee. This would happen if b was pressed while ranged weapon was selected.
- mousewheel up: Will send left mouse button (light attack.)
- mousewheel down: Will send Shift (dodge.)
- page down: Suspends the script.
- end: Terminates the script process.

Known limitations:
- Swiftbow mode will be applied to the melee weapon if a map is ended with the ranged weapon selected.
- If b:: is used to toggle Swiftmode on while the ranged weapon is equipped, Swiftbow mode will be applied to the melee weapon and n:: will have to be used.
- If weapons are switched during the 0.9s tooltip of b::, Swiftbow mode will be applied to the melee weapon and n:: will have to be used.
- Any other scenario in which the ranged weapon is swapped to the melee weapon without Q being pressed will result in Swiftbow mode being applied to the melee weapon
- If any of the chat keys get pressed (enter, num enter, y) in a screen where the chat box doesn't open then q:: and b:: will be disabled until a chat key is pressed again inside a screen where the chat box doesn't open.
