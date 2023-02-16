


if x < oPlayer.x 
	{image_xscale = 1;}
if x > oPlayer.x 
	{image_xscale = -1;}


if place_meeting(x,y,oPlayer) && deactivate_count <= 0
{
	contect = true;
}
else {contect = false;}

if place_meeting(x,y,oPlayer) && oPlayer.input.interaction	&& act_count <=0
{
	sprite_index = NPC_village_14_active;
	deactivate_count = 75;
	act_count = 25;
	audio_play_sound(SE_coin01, 1, false);
	var text = instance_create_layer(x, y-62, "Effects", text_drawingob);
	text.text = "전리품을 환급해 드리겠습니다";
	text.dianame = name_text;
	text.name_color = c_blue;
	var text_width = string_width(text.text);
	text.x -= text_width/2 + 4;
	
	#region root_item price
	if global.root_item[1] > 0
		{global.gold += (global.root_item[1] * 15) ; global.root_item[1] = 0;}
		
	if global.root_item[2] > 0
		{global.gold += (global.root_item[2] * 20) ; global.root_item[2] = 0;}
		
	if global.root_item[3] > 0
		{global.gold += (global.root_item[3] * 25) ; global.root_item[3] = 0;}
		
	if global.root_item[4] > 0
		{global.gold += (global.root_item[4] * 25) ; global.root_item[4] = 0;}
		
	if global.root_item[5] > 0
		{global.gold += (global.root_item[5] * 30) ; global.root_item[5] = 0;}
		
	if global.root_item[6] > 0
		{global.gold += (global.root_item[6] * 35) ; global.root_item[6] = 0;}
		
	if global.root_item[7] > 0
		{global.gold += (global.root_item[7] * 50) ; global.root_item[7] = 0;}
		
	if global.root_item[8] > 0
		{global.gold += (global.root_item[8] * 30) ; global.root_item[8] = 0;}
		
	if global.root_item[9] > 0
		{global.gold += (global.root_item[9] * 25) ; global.root_item[9] = 0;}
		
	#endregion
	
	audio_play_sound(SE_dialog_f01, 1, false);
}


if deactivate_count > 0
	{ deactivate_count--;}
else
	{ sprite_index = NPC_village_14;}

if act_count > 0 
	{ act_count--;}