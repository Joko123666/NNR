
if place_meeting(x, y, oPlayer)	&& oPlayer.invincibility != true
{
	if oPlayer.x > x	//플레이어가 우측
	{
		with (oPlayer) {ismoving = true; moving_direction = 0; moving_speed = 9;vsp = -6;}
	}
	if oPlayer.x <= x	//플레이어가 좌측
	{
		with (oPlayer) {ismoving = true; moving_direction = 180; moving_speed = 9;vsp = -6;}
	}
}

if animation_end()
{instance_destroy();}