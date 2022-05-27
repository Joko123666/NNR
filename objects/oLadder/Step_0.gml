
if place_meeting(x, y, oPlayer) && oPlayer.input.up && oPlayer.ladder_term <= 0 && oPlayer.state != "Death"
{
	oPlayer.state = "Ladder";
	oCamera.camera_yspeed = 2;
	oPlayer.x = x;
}
if place_meeting(x, y, oPlayer) && oPlayer.input.down && oPlayer.ladder_term <= 0 && oPlayer.state != "Death"
{
	oPlayer.state = "Ladder";
	oCamera.camera_yspeed = 2;
	oPlayer.x = x;
}