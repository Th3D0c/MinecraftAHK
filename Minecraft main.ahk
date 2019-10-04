#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%

Menu, Tray, Icon, %A_ScriptDir%\minecraft.ico

#IfWinActive, Minecraft
{
	; The following autopilot code was borrowed from jaceguay at http://www.autohotkey.com/forum/topic59506.html
	F1::Send % "{LButton " ((Cnt := !Cnt) ? "Down}" : "Up}" )
	F4::Send % "{RButton " ((Cnt := !Cnt) ? "Down}" : "Up}" )
	F6::Send % "{shift " ((Cnt2 := !Cnt2) ? "Down}" : "Up}" )
	F8::Send % "{z " ((Cnt2 := !Cnt2) ? "Down}" : "Up}" )
	
	; Simple bridge builder
	F5::
	send {RButton down}
	send {shift down}
	loop {
		if not getkeystate("z", "p") {
			send, {s DOWN}
			sleep, 650
			send, {s UP}
		} else {
			break
		}
	  sleep, 50
	}
	send {RButton up}
	send {shift up}
	return


}