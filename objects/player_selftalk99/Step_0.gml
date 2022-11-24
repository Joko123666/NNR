
if place_meeting(x,y,oPlayer)	
{
	oPlayer.dialog_endswitch = false;
	oPlayer.act_count = 0;
	oPlayer.input.interaction = true;
	instance_destroy();
}
else 
{
	oPlayer.event_tirriger = false;
}
