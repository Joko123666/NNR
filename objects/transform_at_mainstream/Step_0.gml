if global.mainstream < check_mainstream
{
	state_set_sprite(before_sprite, 1, 0);
}

if global.mainstream >= check_mainstream
{
	act_switch = true;
	state_set_sprite(after_sprite, 1, 0);
}

if act_switch == true && place_meeting(x,y,oPlayer) && oPlayer.input.interaction 
{
	var rm = asset_get_index(room_goto_name);
	fade_toroom(rm, 20, c_black);
	global.effect_fadeout = true;

	global.room_direction = room_direction;
	
	if act_sound != false && act_switch == false
	{
		audio_play_sound(act_sound , 2, false);
		act_switch = true;
	}
	
}