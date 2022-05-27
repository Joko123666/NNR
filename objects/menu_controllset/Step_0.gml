if input.cansel
{
	instance_destroy();
	audio_play_sound(SE_system03, 1, false);
}


switch (state)
{
	#region 1번설정
	case "Menu1" :
	selection_x = num1_x;
	selection_y = num1_y;
	sprite_index = setting_controll_menuA;
	
	if input.up
	{
		state = "Menu5"
		audio_play_sound(SE_system01, 1, false);
	}
	if input.down
	{
		state = "Menu2"
		audio_play_sound(SE_system01, 1, false);
	}
	if input.interaction
	{
		global.input_type = "A";
		audio_play_sound(SE_system07, 1, false);
		confirm_x = num1_x + 12;
		confirm_y = num1_y + 14;
	}
	
	break;
		#endregion
	
	#region 2번설정
				//LOAD GAME
	case "Menu2" :
	selection_x = num2_x;
	selection_y = num2_y;
	sprite_index = setting_controll_menuB;
	
	if input.up
	{
		state = "Menu1"
		audio_play_sound(SE_system01, 1, false);
	}
	if input.down
	{
		state = "Menu3"
		audio_play_sound(SE_system01, 1, false);
	}
	if input.interaction
	{
		global.input_type = "B";
		audio_play_sound(SE_system07, 1, false);
		confirm_x = num2_x + 12;
		confirm_y = num2_y + 14;
	}

	break;
		#endregion
	
	#region 3번 설정
									//Menu3
		case "Menu3" :
	selection_x = num3_x;
	selection_y = num3_y;
	sprite_index = setting_controll_menuC;
	
	if input.up
	{
		state = "Menu2"
		audio_play_sound(SE_system01, 1, false);
	}
	if input.down
	{
		state = "Menu4"
		audio_play_sound(SE_system01, 1, false);
	}
	if input.interaction
	{
		global.input_type = "C";
		audio_play_sound(SE_system07, 1, false);
		confirm_x = num3_x + 12;
		confirm_y = num3_y + 14;
	}
	
	break;
	#endregion
	
	#region 4번 설정
		case "Menu4" :
	selection_x = num4_x;
	selection_y = num4_y;
	sprite_index = setting_controll_menuD;
	
	if input.up
	{
		state = "Menu3"
		audio_play_sound(SE_system01, 1, false);
	}
	if input.down
	{
		state = "Menu5"
		audio_play_sound(SE_system01, 1, false);
	}
	if input.interaction
	{
		global.input_type = "D";
		audio_play_sound(SE_system07, 1, false);
		confirm_x = num4_x + 12;
		confirm_y = num4_y + 14;
	}
	
	break;
	#endregion
	
	#region 설정을 저장하고 메뉴로 복귀
	case "Menu5" :
	selection_x = num5_x;
	selection_y = num5_y;
	if global.input_type == "A"
	{sprite_index = setting_controll_menuA;}
	if global.input_type == "B"
	{sprite_index = setting_controll_menuB;}
	if global.input_type == "C"
	{sprite_index = setting_controll_menuC;}
	if global.input_type == "D"
	{sprite_index = setting_controll_menuD;}
	
	
	if input.up
	{
		state = "Menu4"
		audio_play_sound(SE_system01, 1, false);
	}
	if input.down
	{
		state = "Menu1"
		audio_play_sound(SE_system01, 1, false);
	}
	if input.interaction
	{
		//메뉴의 일반상태로 복귀 
		oMenucontrol.state = "Button2";
		oMenucontrol.isopend = true;
		oMenucontrol.show_menu = true;	
		audio_play_sound(SE_system04, 1, false);
		
		instance_destroy();
	}
	
	break;
		#endregion
}