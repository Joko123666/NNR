
act_count = count_decrease(act_count, 1, 0);


if place_meeting(x,y,oPlayer) && oPlayer.input.interaction	&& state == "deactive"	&& act_count <= 0
{
	audio_play_sound(SE_system05, 1, false);
	var text = instance_create_layer(x, y-62, "Effects", text_drawingob);
	if global.language == "Korean"
		{text.text = "아무 반응이 없다";}
	if global.language == "English"
		{text.text = "noting works";}
}

