
if place_meeting(x,y,oPlayer) && act_switch == false
{
	instance_create_layer(x, y-48, "Effects", ui_interaction_button);
}

if oPlayer.input.interaction && place_meeting(x, y, oPlayer) && global.Player_item != "empty" && act_switch == false
{
	var text = instance_create_depth(x, y - 64, 0, text_drawingob);
	if global.language == "Korean"
	{text.text = "이미 들고있는 아이템이 있다";}
	if global.language == "English"
	{text.text = "inventory is full";}
	
	var text_width = string_width(text.text);
	text.x -= text_width/2 + 4;
}

if place_meeting(x,y,oPlayer) && oPlayer.input.interaction && global.Player_item == "empty"	&& act_switch == false
{
	sprite_index = hill_bush;
	image_speed = 0;
	act_switch = true;
	global.Player_item = "Bushberry";
	audio_play_sound(SE_getitem, 1, false);
	var text = instance_create_layer(x, y-62, "Effects", text_drawingob);
	text.text = "덤불 딸기를 손에 넣었다!";
	if global.language == "Korean"
	{text.text = "이미 들고있는 아이템이 있다";}
	if global.language == "English"
	{text.text = "inventory is full";}
	var text_width = string_width(text.text);
	text.x -= text_width/2 + 4;
	
	if global.subquest[1] == 1
	{global.subquest[1] = 2;}
}


if place_meeting(x, y, oHitbox)
{
	create_deathob(hill_bush_frag, ofurniture_bush_frag, 12, 12);	
	audio_play_sound(SE_bush01, 1, false);
		instance_destroy();
}