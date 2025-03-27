if input.cansel
{
	instance_destroy();
	audio_play_sound(SE_system03, 1, false);
}


switch (state)
{
	#region ALL Volume Setting
	case "Menu1" :
	
	if input.up
	{
		state = "Menu2"
		audio_play_sound(SE_system01, 1, false);
	}
	if input.down
	{
		state = "Menu2"
		audio_play_sound(SE_system01, 1, false);
	}
	
	if input.left
	{
		if sound_volume > 0
			{sound_volume -= 0.05; global.gamevolume = sound_volume}
		audio_group_set_gain(audiogroup_default, global.gamevolume, 5);
		slider_x_point = x_minimum + (x_range * sound_volume);
	}
	if input.right
	{
		if sound_volume < 0.99
			{sound_volume += 0.05; global.gamevolume = sound_volume}
		audio_group_set_gain(audiogroup_default, global.gamevolume, 5);
		slider_x_point = x_minimum + (x_range * sound_volume);
	}
	
	
	if input.interaction
	{
		global.gamevolume = sound_volume;
		audio_play_sound(SE_system07, 1, false);
		
	}
	
	break;
		#endregion
	
	#region 2번설정
				//Confirm
	case "Menu2" :
	
	if input.up
	{
		state = "Menu1"
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
		oMenucontrol.state = "Button3";
		oMenucontrol.isopend = true;
		oMenucontrol.show_menu = true;	
		audio_play_sound(SE_system04, 1, false);
		
		instance_destroy();
	}

	break;
		#endregion
	

}