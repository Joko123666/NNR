
if place_meeting(x, y, oPlayer)	&& global.NPC48_dialog > 15
{ismeeting = true;}
else{ismeeting = false;}

if ismeeting == true	&& global.yabawi_token > 0	&&oPlayer.input.interaction
{
	if has_ball == false	//꽝
	{
		global.yabawi_token-=1;
		var text = instance_create_layer(x, y-62, "Effects", text_drawingob);
		text.text = "아무것도 없다";
		var text_width = string_width(text.text);
		text.x -= text_width/2 + 4;
		audio_play_sound(SE_system08, 1, false);
		ismeeting = false;
		instance_destroy();
	}
	if has_ball == true	//당첨
	{
		global.yabawi_token-=1;
		var text = instance_create_layer(x, y-62, "Effects", text_drawingob);
		text.text = "공을 찾았다!";
		var text_width = string_width(text.text);
		text.x -= text_width/2 + 4;
		audio_play_sound(SE_system08, 1, false);
		instance_create_layer(x, y, "Instances", oYabawi_ball);
		
		global.NPC48_dialog = 30;
		ismeeting = false;
		
		global.attackskill04 = true;
		oPlayer.attackskill_set = 4;
		skillget_effect(oPlayer.x, oPlayer.y - 12, 5);
		
		instance_destroy();
	}
}
if ismeeting == true	&& global.yabawi_token <= 0	&&oPlayer.input.interaction
{
		var text = instance_create_layer(x, y-62, "Effects", text_drawingob);
		text.text = "건드리면 손목이 날아간다...";
		var text_width = string_width(text.text);
		text.x -= text_width/2 + 4;
		audio_play_sound(SE_system08, 1, false);
}

