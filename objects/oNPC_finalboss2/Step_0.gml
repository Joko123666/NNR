
dialog_count = global.NPC99_dialog;




if place_meeting(x,y,oPlayer) && deactivate_count <= 0
{
	contect = true;
}
else {contect = false;}

if place_meeting(x,y,oPlayer) && oPlayer.input.interaction	&& act_count <=0	&& dialog_endswitch == false
{

	if x < oPlayer.x 
	{image_xscale = 2;}
	if x > oPlayer.x 
	{image_xscale = -2;}

	act_count = 35;
	deactivate_count = 75;
	if instance_exists(text_drawingob)
	{instance_destroy(text_drawingob);}
	var text = instance_create_layer(x, y-68, "Effects", text_drawingob);
	text.text = NPC_NPC99_dialog(dialog_count);
	text.dianame = name_text;
	text.name_color = npc_namecol;
	var text_width = string_width(text.text);
	text.x -= text_width/2 + 4;
	
	audio_play_sound(SE_dialog_m02, 1, false);
	
}

if dialog_count == 99
{
	if act_switch == false
	{
		act_switch = true; 
		state_set_sprite(finalboss_act2, 1, 0);
		global.BGM_number = 14;	//finalboss_bgm
	}
}
if act_switch == true
{
	if animation_hit_frame(5)
	{
		instance_create_depth(x, y, 0, oenemy_finalboss2);
		oPlayer.x = oplayer_apport.x;
		oPlayer.y = oplayer_apport.y;
		
		var x_distance = 192;
		instance_create_layer(384, 1088, "walls", finalboss_halfwayWall11);
		instance_create_layer(384 + x_distance, 1088, "walls", finalboss_halfwayWall11);
		instance_create_layer(384 + x_distance * 2, 1088, "walls", finalboss_halfwayWall11);
		instance_create_layer(384 + x_distance * 3, 1088, "walls", finalboss_halfwayWall11);
		instance_create_layer(384 + x_distance * 4, 1088, "walls", finalboss_halfwayWall11);
		instance_create_layer(384 + x_distance * 5, 1088, "walls", finalboss_halfwayWall11);
		instance_create_layer(384, 960, "walls", finalboss_halfwayWall11);
		instance_create_layer(384 + x_distance, 960, "walls", finalboss_halfwayWall11);
		instance_create_layer(384 + x_distance * 2, 960, "walls", finalboss_halfwayWall11);
		instance_create_layer(384 + x_distance * 3, 960, "walls", finalboss_halfwayWall11);
		instance_create_layer(384 + x_distance * 4, 960, "walls", finalboss_halfwayWall11);
		instance_create_layer(384 + x_distance * 5, 960, "walls", finalboss_halfwayWall11);
		instance_create_layer(480, 1024, "walls", finalboss_Wall11);
		instance_create_layer(480 + x_distance, 1024, "walls", finalboss_Wall11);
		instance_create_layer(480 + x_distance*2, 1024, "walls", finalboss_Wall11);
		instance_create_layer(480 + x_distance*3, 1024, "walls", finalboss_Wall11);
		instance_create_layer(480 + x_distance*4, 1024, "walls", finalboss_Wall11);
		
		
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