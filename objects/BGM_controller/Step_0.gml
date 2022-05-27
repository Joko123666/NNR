 
if BGM_counter != global.BGM_number
{
	audio_stop_all(); 
	BGM_counter = global.BGM_number;
	show_debug_message(BGM_counter);
	
	if BGM_counter == 0
	{	audio_play_sound(BGM_hill02, 1, true);	}
	
	if BGM_counter == 1
	{	audio_play_sound(BGM_village01, 1, true);	}

	if BGM_counter == 2
	{	audio_play_sound(BGM_hill01, 1, true);	}
	
	if BGM_counter == 3
	{	audio_play_sound(BGM_guildhouse, 1, true);	}
	
	if BGM_counter == 4
	{	audio_play_sound(BGM_boss01, 1, true);	}
	
	if BGM_counter == 5
	{	audio_play_sound(BGM_cave01, 1, true);	}
	
	if BGM_counter == 6
	{	audio_play_sound(BGM_village02, 1, true);	}
	
	if BGM_counter == 7
	{	audio_play_sound(BGM_village03, 1, true);	}
	
	if BGM_counter == 8
	{	audio_play_sound(BGM_village04, 1, true);	}
	
	if BGM_counter == 9
	{	audio_play_sound(BGM_boss02, 1, true);	}
	
	if BGM_counter == 10
	{	audio_play_sound(BGM_vally01, 1, true);	}
	
}


