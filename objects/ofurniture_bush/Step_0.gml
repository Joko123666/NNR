
if place_meeting(x, y, oPlayer) && act_switch == false
{
	image_index = 0; image_speed = 1; act_switch = true;
}

if animation_end()
{
	image_speed = 0; act_switch = false;
}

if place_meeting(x, y, oHitbox)
{
	create_deathob(hill_bush_frag, ofurniture_bush_frag, 12, 12);	
	audio_play_sound(SE_bush01, 1, false);
		instance_destroy();
}