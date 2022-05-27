oPlayer.state = "Stay"

if oPlayer.input.interaction && act_switch == true
	{endswitch = true;}




if endswitch == true
	{oPlayer.state = "Move";instance_destroy();}