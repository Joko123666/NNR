


switch (state)
{
		#region MENU Button _ Game Start
	case "Menu1" :
	x = obutton_gamestart.x - 4;
	y = obutton_gamestart.y - 4;
	
	if input.up
	{
		state = "Menu4"
		audio_play_sound(SE_system01, 1, false);
	}
	if input.down
	{
		state = "Menu2"
		audio_play_sound(SE_system01, 1, false);
	}
	if input.interaction
	{
		instance_create_layer(0, 0, "Effects", selection_effect_controlset);
		audio_play_sound(SE_system04, 1, false);
		instance_destroy();
	}
	
	break;
		#endregion
		#region MENU Button _ Load Game
				//LOAD GAME
	case "Menu2" :
	x = obutton_gameload.x - 4;
	y = obutton_gameload.y - 4;
	
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
		load_game();
		global.room_direction = 100;
		audio_play_sound(SE_system04, 1, false);
	}

	break;
		#endregion
	
									//Menu3
		case "Menu3" :
	x = obutton_volumesetting.x - 4;
	y = obutton_volumesetting.y - 4;
	
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
		instance_create_layer(0, 0, "Effects", menu_volumeset);
		audio_play_sound(SE_system04, 1, false);
		instance_destroy();
	}
	
	break;
	
										//Menu4
		case "Menu4" :
	x = obutton_gameend.x - 4;
	y = obutton_gameend.y - 4;
	
	if input.up
	{
		state = "Menu3"
		audio_play_sound(SE_system01, 1, false);
	}
	if input.down
	{
		state = "Menu1"
		audio_play_sound(SE_system01, 1, false);
	}
	if input.interaction
	{
		audio_play_sound(SE_system04, 1, false);
		game_end();
	}
	
	break;
}