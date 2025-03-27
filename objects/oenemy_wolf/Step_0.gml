
switch (state)
{
	case "Neutral" :
	#region neutral state
	if !instance_exists(oPlayer) break;
	state_set_sprite(enemy_hill_wolf_stand, 1, 0);
	var direction_facing = image_xscale;
	var distance_to_player = point_distance(x, y, oPlayer.x, oPlayer.y);
	
	act_count = count_decrease(act_count, 1, 0);
	if distance_to_player < act_range && act_count <=0
	{
		state = "Chase"
	}
	
	#endregion
	break;
	
	case "Chase" :
	#region Chase state
		state_set_sprite(enemy_hill_wolf_move, 1, 0);
		if !instance_exists(oPlayer) break;
		
		image_xscale = sign(oPlayer.x - x);
		if image_xscale == 0 
		{
			image_xscale = 1;
		}
		
		var direction_facing = image_xscale;
		var distance_to_player = point_distance(x, y, oPlayer.x, oPlayer.y);
		var ydistance = abs(oPlayer.y - y);
		
		move_and_collide_enemy(direction_facing * move_speed, 0);
		
		if place_meeting(x, y, oPlayer) && oPlayer.invincibility == false
		{
			creat_hitbox(x, y, self, sprite_index, knockback_power, 1, attack_power, image_xscale)
			knockback_speed = -3 * image_xscale;
			state = "Knockback"
		}
		
		if distance_to_player >= act_range	or	ydistance > 48
		{
			state = "Neutral"
		}
		
		if distance_to_player <= attack_range	&&	ydistance < 48
		{
			state = "Attack"
		}
		
	#endregion
		break;
		
		case "Attack" :
	#region Attack state
	if !instance_exists(oPlayer) break;
		if act_switch == false
		{
			state_set_sprite(enemy_hill_wolf_attack, 1, 0);
			if animation_hit_frame(1)
			{
				image_xscale = sign(oPlayer.x - x);
				if image_xscale == 0 
				{
					image_xscale = 1;
				}
			}
			if animation_hit_frame(5)
			{
				move_and_collide(4*image_xscale, 0, oWall);
				creat_hitbox(x, y, self, enemy_hill_orc_attack_hitbox , knockback_power, 2, attack_power, image_xscale);
			}
		}
		
		
		if animation_end()
		{
			act_count = act_count_set + 20;
			state = "Neutral";
		}

	#endregion
	break;
	

	case "Knockback" :
		#region Knockback_state
			if !instance_exists(oPlayer) break;
			act_count = act_count_set;
			knockback_state(enemy_hill_orc_knockback, "Neutral");
			moving_speed = 0;

		#endregion
	break;
		
	case "Death" :
	#region
		state_set_sprite(enemy_hill_orc_death, 1, 0);
		
		if animation_end()
		{instance_destroy();}

	#endregion
	break;
}


			//Veltical Collosion
		vsp = vsp + grv;
		
		if (place_meeting(x,y+vsp,oWall))	//공중에 떠있을 경우
		{
			while (!place_meeting(x,y+sign(vsp),oWall))
			{
				y = y + sign(vsp);
			}
			vsp = 0;
		}
		
		y = y + vsp;
