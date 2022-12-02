
if place_meeting(x,y,oPlayer) 
{
	instance_create_layer(x, y-34, "Effects", ui_interaction_button);
}

if oPlayer.input.interaction && place_meeting(x, y, oPlayer)
{
	var text = instance_create_depth(x, y - 64, 0, text_drawingob);
	text.text = message_text;
	var text_width = string_width(text.text);
	text.x -= text_width/2 + 4;

	
	audio_play_sound(SE_system01, 1, false);
	
}

