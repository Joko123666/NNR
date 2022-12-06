if oPlayer.state == "Death"
{state = "Neutral"}

switch (state)
{
	case "Neutral" :
	#region 중립상태
	state_set_sprite(defalt_sprite, 1, 0);
	var direction_facing = image_xscale;
	var distance_to_player = point_distance(x, y, oPlayer.x, oPlayer.y);
	//다용도 변수 리셋 대기
	act_count = count_decrease(act_count, 1, 0);
	//행동상태로 이행
	if distance_to_player < act_range && act_count <=0
	{
		state = "Chase"
		act_count = 0;
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
		move_and_collide_enemy(direction_facing * moving_speed, 0);
		moving_speed -= 0.1;
		
		if act_count <= 0
		{
			//방향 리셋
			image_xscale = sign(oPlayer.x - x);
			if image_xscale == 0 
			{
				image_xscale = 1;
			}
			moving_speed = move_speed;
			act_count = 30;
		}
		
		if distance_to_player >= act_range
		{
			state = "Neutral"
			act_count = 45;
		}
		
		//거리와 상태 만족시 공격으로 이행
		if distance_to_player <= attack_range	&&	ydistance < 68
		{
			state = "Attack"
		}
		
	#endregion
		break;
		
		case "Attack" :
	#region Attack state

		state_set_sprite(attack_sprite, 1, 0);
		if animation_hit_frame(7)
		{
			var shock =	instance_create_layer(x + 12*image_xscale, y, "Instances", longman_shockwave);
			shock.image_xscale = image_xscale;
			shock.speed = 9;
			if image_xscale == 1 {shock.direction = 0;}
			if image_xscale == -1 {shock.direction = 180;}
			creat_hitbox(x, y, self, enemy_vally_longman_hitbox, knockback_power, 4, attack_power, image_xscale);
		}
		
		if animation_end()
		{state = "Neutral";}
		
	#endregion
	break;
	

	case "Knockback" :
		#region Knockback_state
			if oPlayer.state == "Death" exit;

			act_count = act_count_set;
			knockback_state(knockback_sprite, "Neutral");
			
			moving_speed = 0;
			act_switch = false;
			
			if animation_hit_frame(0)
			{audio_play_sound(knockback_SE, 1, false);}

		#endregion
	break;
		
	case "Death" :
	#region
		state_set_sprite(death_sprite, 1, 0);
		if animation_hit_frame(0)
		{audio_play_sound(SE_enemy_death06, 1, false);}
		
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
