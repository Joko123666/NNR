
//완전 미작동 상태
if global.mainstream < 61
{
	state = "stoped";
}

//가동 가능 상태
if global.mainstream >=61	&&	active == false
{
	state = "deactive";
	sprite_index = teleporter_center;
}

switch(state)
{
	case "stoped" :
	if place_meeting(x,y,oPlayer) && oPlayer.input.interaction
	{
		var text = instance_create_layer(x, y-62, "Effects", text_drawingob);
		text.text = "아무 반응이 없다";
		var text_width = string_width(text.text);
		text.x -= text_width/2 + 4;
		audio_play_sound(SE_system08, 1, false);
	}
	break;
	
	case "deactive" :
	if place_meeting(x,y,oPlayer) && oPlayer.input.interaction
	{
		state = "active";
		active = true;
		audio_play_sound(SE_activate01, 1, false);
		global.mainquest[20] = 3;
		quest_clearboard("main020");
	}
	
	break;
	
	case "active" :
	state_set_sprite(teleporter_center_active, 1, 0);
	if animation_end()
	{
		image_speed = 0;
		var portal = instance_create_layer(x, y-42, "Effects", oportal_center);
		portal.room_goto_name = teleportto;
		portal.room_direction = 99;
	}
	break;
	
}