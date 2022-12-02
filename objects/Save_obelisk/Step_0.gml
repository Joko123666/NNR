
act_count = count_decrease(act_count, 1, 0);

if place_meeting(x,y,oPlayer) && act_count <= 0 && state == "deactive"
{
	instance_create_layer(x, y-68, "Effects", ui_interaction_button);	//상호작용 표시
}


if place_meeting(x,y,oPlayer) && oPlayer.input.interaction	&& state == "deactive"	&& act_count <= 0
{
	oPlayer.HP = oPlayer.maxHP;
	oPlayer.MP = oPlayer.maxMP;
	save_game();
	
	state_set_sprite(Save_obelisk_active, 1, 0);
	
	state = "active";
	
	audio_play_sound(SE_system07, 1, false);
	var text = instance_create_layer(x, y-82, "Effects", text_drawingob);
	text.text = "게임 저장 완료!";
	var text_width = string_width(text.text);
	text.x -= text_width/2 + 4;
}

