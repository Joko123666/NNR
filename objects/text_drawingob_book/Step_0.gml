
oPlayer.state = "Stay";
global.UItext_show = true;



if oPlayer.input.interaction	&& act_switch == true
{	instance_destroy();
	oPlayer.state = "Move";
	global.UItext_show = false;
	}
