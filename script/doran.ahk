#Include, lib\TF.ahk
#Include, app\helpers.ahk
#IfWinActive, League of Legends (TM) Client

; Files
GoodGameFile = %A_WorkingDir%\app\messages\gg.txt

; Config
IniRead, EnterDisabled, config.ini, General, DisableEnter
IniRead, AllChatEnabled, config.ini, General, UseAllChat

; Disable Default Enter
If (EnterDisabled)
	*Enter::Return
	*NumpadEnter::Return

#Include, app\hotkeys\global.ahk
#Include, app\hotkeys\flash.ahk
#Include, app\hotkeys\smite.ahk
