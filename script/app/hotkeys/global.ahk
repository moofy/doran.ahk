; Global Hotkeys

; Say GG
::gg::
	Say := GetRandomLine(GoodGameFile)

	If (AllChatEnabled)
		Send, {Enter}/all %Say%{Enter}
	Else
		Send, {Enter}%Say%{Enter}
Return