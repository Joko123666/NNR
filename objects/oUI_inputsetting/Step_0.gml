if input.cansel or keyboard_check_pressed(vk_escape)
{
	instance_create_layer(0, 0, "Effects", selection_effect);
	instance_destroy(self);
	audio_play_sound(SE_system03, 1, false);
	exit;
}


switch (state)
{
	#region 1번설정
	case "Menu1" :
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
		state = "Menu5";
	}
	
	break;
		#endregion
	
	#region 2번설정
	case "Menu2" :
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
		state = "Menu5";
	}

	break;
		#endregion
	
	#region 3번 설정
		case "Menu3" :
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
		state = "Menu5";
	}
	
	break;
	#endregion
	
	#region 4번 설정
		case "Menu4" :
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
		state = "Menu5";
	}
	
	break;
	#endregion
	
	#region 설정을 저장하고 게임 시작
	case "Menu5" :
	
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
		instance_destroy();
	}
	
	break;
		#endregion
}