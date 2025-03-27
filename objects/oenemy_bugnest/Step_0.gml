
switch (state)
{
	case "Neutral" :
	#region neutral state
	if !instance_exists(oPlayer) break;

	#endregion
	break;

	case "Knockback" :
		#region Knockback_state
		audio_play_sound(SE_beat01, 5, false);
		state = "Neutral";
		#endregion
	break;
		
	case "Death" :
	#region
	
		instance_create_depth(x, y, 0, oenemy_townbug);
		if global.mainstream == 13 {global.mainstream = 14;}
		global.mainquest[2] = 2;
		instance_destroy();
	#endregion
	break;
}
