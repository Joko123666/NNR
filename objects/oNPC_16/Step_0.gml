
dialog_count = global.NPC16_dialog;




if place_meeting(x,y,oPlayer) && deactivate_count <= 0
{
	contect = true;
}
else {contect = false;}

if place_meeting(x,y,oPlayer) && oPlayer.input.interaction	&& act_count <=0	&& dialog_endswitch == false
{

	if x < oPlayer.x 
	{image_xscale = 1;}
	if x > oPlayer.x 
	{image_xscale = -1;}

	act_count = 5;
	deactivate_count = 75;
	var text = instance_create_layer(x, y-62, "Effects", UI_text_drawingob);
	text.text = NPC_NPC16_dialog(dialog_count);
	text.dianame = "길드 조사원"
	text.name_color = c_blue;
	var text_width = string_width(text.text);
	text.x -= text_width/2 + 4;
	
}

if !place_meeting(x, y, oPlayer)
{dialog_endswitch = false;}


act_count = count_decrease(act_count, 1, 0);
	
if deactivate_count > 0
	{state_set_sprite(NPC_village_16_active, 1, 0); deactivate_count--;}
else {state_set_sprite(NPC_village_16, 1, 0);}