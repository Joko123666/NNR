
if place_meeting(x,y,oPlayer)	
{
	oPlayer.dialog_endswitch = false;
	instance_destroy();
}
else 
{
	oPlayer.event_tirriger = false;
}
