
dialog_count = global.NPC30_dialog;


//Start quest



if place_meeting(x,y,oPlayer) && deactivate_count <= 0
{
	contect = true;
}
else {contect = false;}

if place_meeting(x,y,oPlayer) && oPlayer.input.interaction	&& act_count <=0
{
	act_count = 5;
	deactivate_count = 75;
	
	if instance_exists(text_drawingob)
		{instance_destroy(text_drawingob);}
	
	var text = instance_create_layer(x, y-62, "Effects", text_drawingob);
	text.text = NPC_NPC30_dialog(dialog_count);
	var text_width = string_width(text.text);
	text.x -= text_width/2 + 4;
	
	if x < oPlayer.x 
	{image_xscale = 1;}
	if x > oPlayer.x 
	{image_xscale = -1;}
}


if deactivate_count > 0
	{ deactivate_count--;	state_set_sprite(active_sprite, 1, 0);}
else
	{state_set_sprite(defalt_sprite, 1, 0);}

if act_count > 0 
	{act_count--;}

if global.NPC30_dialog == 10
{image_index = 0;}
	
if global.NPC17_dialog >= 11	&& act_count <= 0
{
	if act_switch == false
	{state_set_sprite(NPC_village_17_disapear, 1, 0); act_switch = true;}
	if animation_end()
	{instance_destroy();}
}