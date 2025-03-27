
dialog_count = global.NPC99_dialog;




if place_meeting(x,y,oPlayer) && deactivate_count <= 0
{
	contect = true;
}
else {contect = false;}

if place_meeting(x,y,oPlayer) && oPlayer.input.interaction	&& act_count <=0	&& dialog_endswitch == false
{

	if instance_exists(text_drawingob)
	{instance_destroy(text_drawingob);}
	act_count = 35;
	deactivate_count = 75;
	var text = instance_create_layer(x, y-64, "Effects", text_drawingob);
	text.text = NPC_NPC99_dialog(dialog_count);
	text.dianame = name_text;
	text.name_color = npc_namecol;
	var text_width = string_width(text.text);
	text.x -= text_width/2 + 4;
	
	audio_play_sound(SE_dialog_m02, 1, false);
	
}

if dialog_count == 110
{
	if act_switch == false
	{
		act_switch = true; state_set_sprite(finalboss_dead, 1, 0);
		global.BGM_number = 99;	//end_bgm
	}
}
if act_switch == true
{
	if animation_end()
	{
		instance_create_depth(x, y, 1, oNPC_finalboss2_end);
		instance_destroy();
		
	}
}


if !place_meeting(x, y, oPlayer)
{dialog_endswitch = false;}

if diafalse_count > 0 
{diafalse_count = count_decrease(diafalse_count, 1, 0); if diafalse_count <= 0 {dialog_endswitch = false;}}

act_count = count_decrease(act_count, 1, 0);
	
if deactivate_count > 0
	{state_set_sprite(active_sprite, 1, 0); deactivate_count--;}
else {state_set_sprite(defalt_sprite, 1, 0);}