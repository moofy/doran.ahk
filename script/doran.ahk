#Include, lib\TF.ahk
#IfWinActive, League of Legends (TM) Client

; Messages
gg = %A_WorkingDir%\messages\gg.txt

; Config
IniRead, EnterDisabled, config.ini, General, DisableEnter
IniRead, AllChatEnabled, config.ini, General, UseAllChat

; Disable Default Enter
If (EnterDisabled)
	*Enter::Return
	*NumpadEnter::Return

; Say GG
::gg::
	LineCount := TF_CountLines(gg)
	Random, x, 1, LineCount
	FileReadLine, Say, %gg%, x

	If (AllChatEnabled)
		Send, {Enter}/all %Say%{Enter}
	Else
		Send, {Enter}%Say%{Enter}
