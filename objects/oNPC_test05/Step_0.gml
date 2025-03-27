if x < oPlayer.x 
	{image_xscale = 1;}
if x > oPlayer.x 
	{image_xscale = -1;}

if place_meeting(x,y,oPlayer) && act_count <= 0
{
	instance_create_layer(x, y-48, "Effects", ui_interaction_button);
}

if place_meeting(x,y,oPlayer) && oPlayer.input.interaction
{
	sprite_index = NPC_village_05_active;
	act_count = 45;
	var text = instance_create_layer(x, y-62, "Effects", text_drawingob);
	if global.language == "Korean"
	{text.text = "이곳은 현재 접근금지입니다"}
	if global.language == "English"
	{text.text = "You can't pass here"}
	var text_width = string_width(text.text);
	text.x -= text_width/2 + 4;
	
	audio_play_sound(SE_dialog_m01, 1, false);
}

if !place_meeting(x,y,oPlayer)
{
	if act_count > 0
	{ act_count--;}
	else
	{
		sprite_index = NPC_village_05;
	}
}