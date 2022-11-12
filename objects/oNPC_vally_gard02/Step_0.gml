



//Start quest



if place_meeting(x,y,oPlayer) && deactivate_count <= 0
{
	instance_create_layer(x, y-48, "Effects", ui_interaction_button);
}

if place_meeting(x,y,oPlayer) && oPlayer.input.interaction	&& act_count <=0
{
	act_count = 5;
	deactivate_count = 75;
	
	if instance_exists(text_drawingob)
		{instance_destroy(text_drawingob);}
	
	var text = instance_create_layer(x, y-62, "Effects", text_drawingob);
	text.text = NPC_vally_gard02_dialog(dialog_count);			//대사 스크립트 불러오기
	var text_width = string_width(text.text);
	text.x -= text_width/2 + 4;
	
	if x < oPlayer.x 
	{image_xscale = 1;}
	if x > oPlayer.x 
	{image_xscale = -1;}
	
	audio_play_sound(SE_dialog_m01, 1, false);
}


if deactivate_count > 0
	{ deactivate_count--;	state_set_sprite(active_sprite, 1, 0);}
else
	{state_set_sprite(defalt_sprite, 1, 0);}

if act_count > 0 
	{act_count--;}

