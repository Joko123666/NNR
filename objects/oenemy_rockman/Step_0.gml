if oPlayer.state == "Death"
{state = "Neutral"}

switch (state)
{
	case "Neutral" :
	#region neutral state
	state_set_sprite(enemy_vally_rockman_stand, 1, 0);
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
	#region 행동상태
		state_set_sprite(move_sprite, 1, 0);
		
		act_switch = false;
		act_count = count_decrease(act_count, 1, 0);
		var distance_to_player = point_distance(x, y, oPlayer.x, oPlayer.y);
		var direction_facing = image_xscale;
		var ydistance = abs(oPlayer.y - y);
		move_and_collide_enemy(direction_facing * move_speed, 0);
		
		if act_count <= 0
		{
			//방향 리셋
			image_xscale = sign(oPlayer.x - x);
			if image_xscale == 0 
			{
				image_xscale = 1;
			}
			act_count = 45;
		}
		
		if distance_to_player >= act_range
		{
			state = "Neutral"
			act_count = 45;
		}
		
		//거리와 상태 만족시 공격으로 이행
		if distance_to_player <= attack_range	&&	ydistance < 48
		{
			state = "Attack"
		}
		
	#endregion
		break;
		
		case "Attack" :
	#region Attack state
	if oPlayer.state == "Death" exit;
	
		state_set_sprite(enemy_vally_rockman_attack, 1, 0);
		if animation_hit_frame(1)
		{
			image_xscale = sign(oPlayer.x - x);
			if image_xscale == 0 
			{
				image_xscale = 1;
			}
			audio_play_sound(SE_enemy_attack01, 1, false);
		}
		if animation_hit_frame(5)
		{
			creat_hitbox(x, y, self, enemy_hill_orc_attack_hitbox , knockback_power, 4, attack_power, image_xscale);
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
			if oPlayer.state == "Death" exit;
			act_count = act_count_set;
			knockback_state(enemy_vally_rockman_knockback, "Neutral");
			moving_speed = 0;
			
			if animation_hit_frame(0)
			{audio_play_sound(knockback_SE, 1, false);}

		#endregion
	break;
		
	case "Death" :
	#region
		state_set_sprite(enemy_vally_rockman_death, 1, 0);
		
		if animation_hit_frame(0)
			{audio_play_sound(death_SE, 1, false);}
		
		if animation_end()
		{instance_destroy(); instance_create_depth(x, y-12, 0, dead_item);}

	#endregion
	break;
}


			//Veltical Collosion
		vsp = vsp + grv;
		
		if (place_meeting(x,y+vsp,oWall)) or (place_meeting(x,y+vsp,Enemy_wall))	//공중에 떠있을 경우
		{
			while (!place_meeting(x,y+sign(vsp),oWall)) && (!place_meeting(x,y+vsp,Enemy_wall))
			{
				y = y + sign(vsp);
			}
			vsp = 0;
		}
		
		y = y + vsp;
