if room == Final_bossarea	or room == Vally_tunnel_boss or room == Hill_cave_boss or room == Final_bossarea_end
{state = "Disactive";}

switch (state)
{
	#region disactive
	case "Disactive" :
	isopend = false;
	if keyboard_check_pressed(vk_escape)	&& oPlayer.state != "Death" &&	room != Title
	{
		if room == Title
		{break;}
		state = "Button1";
		oPlayer.state = "Stay";
		audio_play_sound(SE_system03, 0, false);
		if instance_exists(menu_controllset)
		{instance_destroy(menu_controllset);}
	}
	break;
	#endregion
	
	#region button1	resume
	case "Button1" :
	isopend = true;
	show_menu = true;
	
	// exit menu
	if keyboard_check_pressed(vk_escape) or oPlayer.state != "Stay"
	{state = "Disactive"; oPlayer.state = "Move";audio_play_sound(SE_system03, 0, false);}
	
	// menu button controll up,down
	if input.up
	{state = "Button6";audio_play_sound(SE_system01, 0, false);}
	if input.down
	{state = "Button2";audio_play_sound(SE_system01, 0, false);}
	if input.right
	{state = "Mskillset"; audio_play_sound(SE_system01, 0, false);}
	
	// select this button
	if input.interaction
	{state = "Disactive"; oPlayer.state = "Move";audio_play_sound(SE_system02, 0, false);}
	
	break
	#endregion
	
	#region button2	setting_KEY
	case "Button2" :
	isopend = true;
	show_menu = true;
	#region common
	// exit menu
	if keyboard_check_pressed(vk_escape) or oPlayer.state != "Stay"
	{state = "Disactive"; oPlayer.state = "Move";audio_play_sound(SE_system03, 0, false);}
	
	// menu button controll up,down
	if input.up
	{state = "Button1";audio_play_sound(SE_system01, 0, false);}
	if input.down
	{state = "Button3";audio_play_sound(SE_system01, 0, false);}
	if input.right
	{state = "Mskillset"; audio_play_sound(SE_system01, 0, false);}
	#endregion
	// select this button
	if input.interaction
	{
		state = "SettingKEY";
		instance_create_layer(0, 0, "Screen" , menu_controllset)
		audio_play_sound(SE_system03, 1, false);
	}
	
	break
	#endregion
	
	#region button3	setting_VOLum
	case "Button3" :
	isopend = true;
	show_menu = true;
	
	// exit menu
	if keyboard_check_pressed(vk_escape) or oPlayer.state != "Stay"
	{state = "Disactive"; oPlayer.state = "Move";audio_play_sound(SE_system03, 0, false);}
	
	// menu button controll up,down
	if input.up
	{state = "Button2";audio_play_sound(SE_system01, 0, false);}
	if input.down
	{state = "Button4";audio_play_sound(SE_system01, 0, false);}
	if input.right
	{state = "Mskillset"; audio_play_sound(SE_system01, 0, false);}
	
	// select this button
	if input.interaction
	{
		state = "SettingKEY";
		instance_create_layer(0, 0, "Screen" , menu_volumeset)
		audio_play_sound(SE_system03, 1, false);
	}
	
	break
	#endregion
	
	#region button4	LOAD game
	case "Button4" :
	isopend = true;
	show_menu = true;
	
	// exit menu
	if keyboard_check_pressed(vk_escape) or oPlayer.state != "Stay"
	{state = "Disactive"; oPlayer.state = "Move";audio_play_sound(SE_system03, 0, false);}
	
	// menu button controll up,down
	if input.up
	{state = "Button3";audio_play_sound(SE_system01, 0, false);}
	if input.down
	{state = "Button5";audio_play_sound(SE_system01, 0, false);}
	if input.right
	{state = "Mskillset"; audio_play_sound(SE_system01, 0, false);}
	
	// select this button
	if input.interaction
	{	
		global.room_direction = 100;
		oHud.darken_screen = 100;
		load_game();
		global.room_direction = 100;
		audio_play_sound(SE_system04, 1, false);
	}
	
	break
	#endregion
	
	#region button5	to Title
	case "Button5" :
	isopend = true;
	show_menu = true;
	
	// exit menu
	if keyboard_check_pressed(vk_escape) or oPlayer.state != "Stay"
	{state = "Disactive"; oPlayer.state = "Move";audio_play_sound(SE_system03, 0, false);}
	
	// menu button controll up,down
	if input.up
	{state = "Button4";audio_play_sound(SE_system01, 0, false);}
	if input.down
	{state = "Button6";audio_play_sound(SE_system01, 0, false);}
	if input.right
	{state = "Mskillset"; audio_play_sound(SE_system01, 0, false);}
	
	// select this button
	if input.interaction
	{game_restart();}
	
	break
	#endregion
	
	#region button6	exit_game
	case "Button6" :
	isopend = true;
	show_menu = true;
	
	// exit menu
	if keyboard_check_pressed(vk_escape) or oPlayer.state != "Stay"
	{state = "Disactive"; oPlayer.state = "Move";audio_play_sound(SE_system03, 0, false);}
	
	// menu button controll up,down
	if input.up
	{state = "Button5";audio_play_sound(SE_system01, 0, false);}
	if input.down
	{state = "Button1";audio_play_sound(SE_system01, 0, false);}
	if input.right
	{state = "Mskillset"; audio_play_sound(SE_system01, 0, false);}
	
	// select this button
	if input.interaction
	{game_end();}
	
	break
	#endregion
	
	
	
	#region SkillSet_Moveskill
	case "Mskillset" :
	isopend = true;
	show_menu = true;
	
			show_debug_message(skillset_state);
	
	// exit menu
	if keyboard_check_pressed(vk_escape) or oPlayer.state != "Stay"
	{state = "Disactive"; oPlayer.state = "Move";audio_play_sound(SE_system03, 0, false);}
	
	//스킬 선택창 상태
	if state = "Mskillset"
	{
	switch (skillset_state)
	{

		case "Defalt" :
		{
			if input.down
			{state = "Askillset"; audio_play_sound(SE_system01, 0, false);}
			if input.left
			{state = "Button1"; audio_play_sound(SE_system01, 0, false);}
			if input.interaction
			{skillset_state = "Mskillset_1"; audio_play_sound(SE_system04, 0, false);}
			if input.cansel
			{state = "Button1";skillset_state = "Defalt"; audio_play_sound(SE_system05, 0, false);}
			break;
		}
	
		case "Mskillset_1" :
		{
			if input.right {skillset_state = "Mskillset_2";}
			if input.left {skillset_state = "Mskillset_6";}
			if input.interaction {skillset_state = "Defalt"; oPlayer.moveskill_set = 1 ;audio_play_sound(SE_system04, 0, false);}
			if input.cansel {skillset_state = "Defalt";audio_play_sound(SE_system05, 0, false);}
			break;
		}
		case "Mskillset_2" :
		{
			if input.right {skillset_state = "Mskillset_3";}
			if input.left {skillset_state = "Mskillset_1";}
			if input.interaction 
			{
				skillset_state = "Defalt"; 
				if global.moveskill02 == true	{oPlayer.moveskill_set = 2 ; audio_play_sound(SE_system04, 0, false);}
				else {audio_play_sound(SE_system05, 0, false);}
			}
			if input.cansel {skillset_state = "Defalt";audio_play_sound(SE_system05, 0, false);}
			break;
		}
		case "Mskillset_3" :
		{
			if input.right {skillset_state = "Mskillset_4";}
			if input.left {skillset_state = "Mskillset_2";}
			if input.interaction 
			{
				skillset_state = "Defalt"; 
				if global.moveskill03 == true	{oPlayer.moveskill_set = 3 ; audio_play_sound(SE_system04, 0, false);}
				else {audio_play_sound(SE_system05, 0, false);}
			}
			if input.cansel {skillset_state = "Defalt";audio_play_sound(SE_system05, 0, false);}
			break;
		}
		case "Mskillset_4" :
		{
			if input.right {skillset_state = "Mskillset_5";}
			if input.left {skillset_state = "Mskillset_3";}
			if input.interaction 
			{
				skillset_state = "Defalt"; 
				if global.moveskill04 == true	{oPlayer.moveskill_set = 4 ; audio_play_sound(SE_system04, 0, false);}
				else {audio_play_sound(SE_system05, 0, false);}
			}
			if input.cansel {skillset_state = "Defalt";audio_play_sound(SE_system05, 0, false);}
			break;
		}
		case "Mskillset_5" :
		{
			if input.right {skillset_state = "Mskillset_6";}
			if input.left {skillset_state = "Mskillset_4";}
			if input.interaction 
			{
				skillset_state = "Defalt"; 
				if global.moveskill05 == true	{oPlayer.moveskill_set = 5 ; audio_play_sound(SE_system04, 0, false);}
				else {audio_play_sound(SE_system05, 0, false);}
			}
			if input.cansel {skillset_state = "Defalt";audio_play_sound(SE_system05, 0, false);}
			break;
		}
		case "Mskillset_6" :
		{
			if input.right {skillset_state = "Mskillset_1";}
			if input.left {skillset_state = "Mskillset_5";}
			if input.interaction 
			{
				skillset_state = "Defalt"; 
				if global.moveskill06 == true	{oPlayer.moveskill_set = 6 ; audio_play_sound(SE_system04, 0, false);}
				else {audio_play_sound(SE_system05, 0, false);}
			}
			if input.cansel {skillset_state = "Defalt";audio_play_sound(SE_system05, 0, false);}
			break;
		}
	}
	
	}
	break;
	#endregion
	
	
	#region SkillSet_Moveskill
	case "Askillset" :
	isopend = true;
	show_menu = true;
	
	// exit menu
	if keyboard_check_pressed(vk_escape) or oPlayer.state != "Stay"
	{state = "Disactive"; oPlayer.state = "Move";audio_play_sound(SE_system03, 0, false);}
	
	//스킬 선택창 상태
	switch (skillset_state)
	{
	case "Defalt" :
	{
		if input.up
		{state = "Mskillset"; audio_play_sound(SE_system01, 0, false);}
		if input.left
		{state = "Button1"; audio_play_sound(SE_system01, 0, false);}
		if input.interaction
		{skillset_state = "Askillset_1";}
		if input.cansel {state = "Button1"; audio_play_sound(SE_system05, 0, false);}
		break;
	}
	
	case "Askillset_1" :
	{
		if input.right {skillset_state = "Askillset_2";}
		if input.left {skillset_state = "Askillset_6";}
		if input.interaction {skillset_state = "Defalt"; oPlayer.attackskill_set = 1 ;audio_play_sound(SE_system04, 0, false);}
		if input.cansel {skillset_state = "Defalt";audio_play_sound(SE_system05, 0, false);}
		break;
	}
	case "Askillset_2" :
	{
		if input.right {skillset_state = "Askillset_3";}
		if input.left {skillset_state = "Askillset_1";}
		if input.interaction 
		{
			skillset_state = "Defalt"; 
			if global.attackskill02 == true	{oPlayer.attackskill_set = 2 ; audio_play_sound(SE_system04, 0, false);}
			else {audio_play_sound(SE_system05, 0, false);}
		}
		if input.cansel {skillset_state = "Defalt";audio_play_sound(SE_system05, 0, false);}
		break;
	}
	case "Askillset_3" :
		{
			if input.right {skillset_state = "Askillset_4";}
			if input.left {skillset_state = "Askillset_2";}
			if input.interaction 
			{
				skillset_state = "Defalt"; 
				if global.attackskill03 == true	{oPlayer.attackskill_set = 3 ; audio_play_sound(SE_system04, 0, false);}
				else {audio_play_sound(SE_system05, 0, false);}
			}
			if input.cansel {skillset_state = "Defalt";audio_play_sound(SE_system05, 0, false);}
			break;
		}
	case "Askillset_4" :
	{
		if input.right {skillset_state = "Askillset_5";}
		if input.left {skillset_state = "Askillset_3";}
		if input.interaction 
		{
			skillset_state = "Defalt"; 
			if global.attackskill04 == true	{oPlayer.attackskill_set = 4 ; audio_play_sound(SE_system04, 0, false);}
			else {audio_play_sound(SE_system05, 0, false);}
		}
		if input.cansel {skillset_state = "Defalt";audio_play_sound(SE_system05, 0, false);}
		break;
	}
	case "Askillset_5" :
	{
		if input.right {skillset_state = "Askillset_6";}
		if input.left {skillset_state = "Askillset_4";}
		if input.interaction 
		{
			skillset_state = "Defalt"; 
			if global.attackskill05 == true	{oPlayer.attackskill_set = 5 ; audio_play_sound(SE_system04, 0, false);}
			else {audio_play_sound(SE_system05, 0, false);}
		}
		if input.cansel {skillset_state = "Defalt";audio_play_sound(SE_system05, 0, false);}
		break;
	}
	case "Askillset_6" :
	{
		if input.right {skillset_state = "Askillset_1";}
		if input.left {skillset_state = "Askillset_5";}
		if input.interaction 
		{
			skillset_state = "Defalt"; 
			if global.attackskill06 == true	{oPlayer.attackskill_set = 6 ; audio_play_sound(SE_system04, 0, false);}
			else {audio_play_sound(SE_system05, 0, false);}
		}
		if input.cansel {skillset_state = "Defalt";audio_play_sound(SE_system05, 0, false);}
		break;
	}
	
	}
	break;
	#endregion
	
	
	#region setting_popup
	case "SettingKEY" :
	
	isopend = true;
	show_menu = false;
	
	#endregion
	
	#region setting_popup
	case "SettingVOL" :
	
	isopend = true;
	show_menu = false;
	
	#endregion
	
	
}