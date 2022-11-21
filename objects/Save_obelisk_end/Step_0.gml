
act_count = count_decrease(act_count, 1, 0);


if place_meeting(x,y,oPlayer) && oPlayer.input.interaction	&& state == "deactive"	&& act_count <= 0	&& global.mainstream < 80
{
	audio_play_sound(SE_system05, 1, false);
	var text = instance_create_layer(x, y-62, "Effects", text_drawingob);
	text.text = "아무 반응이 없다";
}

if place_meeting(x,y,oPlayer) && oPlayer.input.interaction	&& state == "deactive"	&& global.mainstream >= 80	
{
	if act_switch == false
	{
		audio_play_sound(SE_system07, 1, false);
	
		state = "active";
		image_speed = 1;
	}
	
	if act_switch == true
	{
		audio_play_sound(SE_system07, 1, false);
	
		state = "active";
		sprite_index = active_sprite;
		image_speed = 1;
		global.greenorb = false;
	}
	
	
}

if state == "active"
{
	if animation_end()	&& act_switch == false
	{
		image_speed = 0;
		act_switch = true;
		state = "deactive";
	}
	if animation_end()	&& act_switch == true
	{
		image_speed = 0;
		act_switch = true;
		state = "done";
	}
}

if state == "done"	&& place_meeting(x,y,oPlayer) && oPlayer.input.interaction
{
	audio_play_sound(SE_system05, 1, false);
	var text = instance_create_layer(x, y-62, "Effects", text_drawingob);
	text.text = "녹색 구슬이 영롱하게 빛나고있다";
}