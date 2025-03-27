if oPlayer.state == "Death"
{state = "Neutral"}

switch (state)
{
	case "Neutral" :
	#region neutral state
	state_set_sprite(enemy_hill_goblin_stand, 1, 0);
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
		state_set_sprite(enemy_hill_goblin_move, 1, 0);
		act_switch = false;
		
		image_xscale = sign(oPlayer.x - x);
		if image_xscale == 0 
		{
			image_xscale = 1;
		}
		
		var direction_facing = image_xscale;
		var distance_to_player = point_distance(x, y, oPlayer.x, oPlayer.y);
		var ydistance = abs(oPlayer.y - y);
		
		move_and_collide_enemy(direction_facing * move_speed, 0);
		

		
		if distance_to_player >= act_range	or	ydistance > 32
		{
			state = "Neutral"
		}
		
		if distance_to_player <= attack_range	&&	ydistance < 32
		{
			state = "Attack"
		}
		
	#endregion
		break;
		
		case "Attack" :
	#region Attack state
	if oPlayer.state == "Death" exit;
		if act_switch == false
		{
			state_set_sprite(enemy_hill_goblin_attack, 1, 0);
			if animation_hit_frame(1)
			{
				image_xscale = sign(oPlayer.x - x);
				if image_xscale == 0 
				{
					image_xscale = 1;
				}
			}
			if animation_hit_frame(6)
			{
				moving_speed = 6;
				vsp = -4;
				act_switch = true;
			}
		}
		
		
		
		if act_switch == true
		{
			
			if place_meeting(x, y, oPlayer) && oPlayer.invincibility == false		//플레이어 접촉 확인, 타격 
			{
				creat_hitbox(x, y, self, sprite_index, knockback_power, 1, attack_power, image_xscale)
			}
			
			move_and_collide_enemy(image_xscale * moving_speed, 0);
			moving_speed -= frict/2;	
			if (place_meeting(x,y+vsp,oWall))	or moving_speed <=0
			{
				act_count = act_count_set;
				{act_switch = false;}
				state = "Neutral"
			}
		}
	#endregion
	break;
	

	case "Knockback" :
		#region Knockback_state
			if oPlayer.state == "Death" exit;
			act_count = act_count_set;
			knockback_state(enemy_hill_goblin_knockback, "Neutral");
			moving_speed = 0;
			act_switch = false;

		#endregion
	break;
		
	case "Death" :
	#region
		state_set_sprite(enemy_hill_goblin_death, 1, 0);
		
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
