		x = hold_x;
		y = hold_y;

switch (state)
{
	case "Neutral" :
		#region neutral state
	
		if !instance_exists(oPlayer) break;
		state_set_sprite(sandbeg_stand, 1, 0);
		


		#endregion
	break;

	case "Knockback" :
		#region Knockback_state
		
			if !instance_exists(oPlayer) break;

			knockback_state(sandbeg_knockback, "Neutral");

		#endregion
	break;
		
	case "Death" :
	#region
		
		instance_create_depth(x, y- 12, 0, Item_goldsack);
		instance_destroy();
		
	#endregion
	break;
}

