
act_count = count_decrease(act_count, 1, 0);

if place_meeting(x,y,oPlayer) && act_count <= 0 && state == "deactive"
{
	instance_create_layer(x, y-68, "Effects", ui_interaction_button);	//상호작용 표시
}


if place_meeting(x,y,oPlayer) && oPlayer.input.interaction	&& state == "deactive"	&& act_count <= 0
{
	save_game();
	
	state_set_sprite(Save_obelisk_active, 1, 0);
	
	state = "active";
	
	audio_play_sound(SE_system04, 1, false);
	oPlayer.state = "Stay";
	alarm[0] = 35;
	
	var text = instance_create_layer(x, y-62, "Effects", text_drawingob);
	text.text = "수면에 빠져들었다";
	global.end_sleep = true;
}

