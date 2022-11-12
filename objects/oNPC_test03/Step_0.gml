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
	sprite_index = NPC_village_03_active;
	act_count = 45;
	var text = instance_create_layer(x, y-62, "Effects", text_drawingob);
	text.text = "필요한게 있으면 언제든 말하렴"
	var text_width = string_width(text.text);
	text.x -= text_width/2 + 4;
	
	audio_play_sound(SE_dialog_m02, 1, false);
}

if act_count > 0
{ act_count--;}
else
{
	sprite_index = NPC_village_03;
}