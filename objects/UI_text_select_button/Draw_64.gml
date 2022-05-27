
#region Select_question
if !instance_exists(oPlayer) exit;
	draw_sprite(UI_Hud_select_button, 0, 256, 118);
	draw_text(264, 126, textA);
	draw_sprite(UI_Hud_select_button, 0, 256, 147);
	draw_text(264, 155, textB);
	
#endregion


#region Select_question
if !instance_exists(oPlayer) exit;
	if select_state == "A"	&& act_switch == true
		{
			draw_sprite(UI_Hud_select_light, 0, 256, 118);
			if input.up		{select_state = "B"; alarm[0] = 3; act_switch = false;}
			if input.down	{select_state = "B"; alarm[0] = 3; act_switch = false;}
			if input.interaction 
				{global.selection = "A"; instance_destroy();}
		}
	if select_state == "B" && act_switch == true
		{
			draw_sprite(UI_Hud_select_light, 0, 256, 147);
			if input.up		{select_state = "A"; alarm[0] = 3; act_switch = false;}
			if input.down	{select_state = "A"; alarm[0] = 3; act_switch = false;}
			if input.interaction  
				{global.selection = "B"; instance_destroy();}
		}
	
#endregion