if input.cansel
{
	instance_create_layer(0, 0, "Effects", selection_effect);
	instance_destroy();
}


switch (state)
{
	#region 1번설정
	case "Menu1" :
	x = num1_x;
	y = num1_y;
	draw_instance.state = "A";
	
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
		instance_destroy(confirm);
		confirm = instance_create_layer(x + 24, y + 30, "Screen", UI_confirm);
		state = "Menu5";
	}
	
	break;
		#endregion
	
	#region 2번설정
				//LOAD GAME
	case "Menu2" :
	x = num2_x;
	y = num2_y;
	draw_instance.state = "B";
	
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
		instance_destroy(confirm)
		confirm = instance_create_layer(x + 24, y + 30, "Screen", UI_confirm);
		state = "Menu5";
	}

	break;
		#endregion
	
	#region 3번 설정
									//Menu3
		case "Menu3" :
	x = num3_x;
	y = num3_y;
	draw_instance.state = "C";
	
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
		instance_destroy(confirm)
		confirm = instance_create_layer(x + 24, y + 30, "Screen", UI_confirm);
		state = "Menu5";
	}
	
	break;
	#endregion
	
	#region 4번 설정
		case "Menu4" :
	x = num4_x;
	y = num4_y;
	draw_instance.state = "D";
	
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
		instance_destroy(confirm)
		confirm = instance_create_layer(x + 24, y + 30, "Screen", UI_confirm);
		state = "Menu5";
	}
	
	break;
	#endregion
	
	#region 설정을 저장하고 게임 시작
	case "Menu5" :
	x = num5_x;
	y = num5_y;
	
	image_yscale = 0.8;
	
	if input.up
	{
		state = "Menu4"
		audio_play_sound(SE_system01, 1, false);
		image_yscale = 1;
	}
	if input.down
	{
		state = "Menu1"
		audio_play_sound(SE_system01, 1, false);
		image_yscale = 1;
	}
	if input.interaction
	{
		fade_toroom(Village_training_area, 60, c_black);
		global.mainstream = 1;
		audio_play_sound(SE_system04, 1, false);
		instance_destroy(draw_instance);
		instance_destroy(confirm);
		instance_destroy();
	}
	
	break;
		#endregion
}