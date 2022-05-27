
dialog_count = global.NPC19_dialog;


//Start quest



if place_meeting(x,y,oPlayer) && act_count <= 0
{
	instance_create_layer(x, y-48, "Effects", ui_interaction_button);
}

if place_meeting(x,y,oPlayer) && oPlayer.input.interaction	&& act_count <=0
{
	sprite_index = NPC_village_19_active;
	deactivate_count = 75;
	act_count = 25;
	var text = instance_create_layer(x, y-62, "Effects", text_drawingob);
	text.text = NPC_NPC19_dialog(dialog_count);
	//text.dianame = "길드 조사원"
	//text.name_color = c_blue;
	var text_width = string_width(text.text);
	text.x -= text_width/2 + 4;
	
	if x < oPlayer.x 
	{image_xscale = 1;}
	if x > oPlayer.x 
	{image_xscale = -1;}
}


if deactivate_count > 0
	{ deactivate_count--;}
else
	{ sprite_index = NPC_village_18;}

if act_count > 0 
	{ act_count--;}
	
