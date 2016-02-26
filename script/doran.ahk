#Include, lib\TF.ahk
#Include, app\helpers.ahk
#IfWinActive, League of Legends (TM) Client

; Files
GoodGameFile = %A_WorkingDir%\messages\gg.txt

; Config
IniRead, EnterDisabled, config.ini, General, DisableEnter
IniRead, AllChatEnabled, config.ini, General, UseAllChat

; Disable Default Enter
If (EnterDisabled)
	*Enter::Return
	*NumpadEnter::Return

; Say GG
::gg::
	Say := GetRandomLine(GoodGameFile)

	If (AllChatEnabled)
		Send, {Enter}/all %Say%{Enter}
	Else
		Send, {Enter}%Say%{Enter}
