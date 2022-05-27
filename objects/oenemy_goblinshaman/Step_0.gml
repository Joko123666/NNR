
switch (state)
{
	case "Neutral" :
	#region neutral state
	if !instance_exists(oPlayer) break;
	state_set_sprite(enemy_hill_goblinshaman_stand, 1, 0);
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
		state_set_sprite(enemy_hill_goblinshaman_move, 1, 0);
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
			act_switch = false;
		}
		
	#endregion
		break;
		
		case "Attack" :
	#region Attack state
	if !instance_exists(oPlayer) break;
		
		if act_switch == false
		{
			state_set_sprite(enemy_hill_goblinshaman_casting, 1, 0);
			
			if animation_end()
			{
				if image_xscale == 1 {attack_side = 1;}
				if image_xscale == -1 {attack_side = -1;}
				act_switch = true;
				image_index = 0;
				image_speed = 1;
			}
		}
		
		
		if act_switch == true
		{
			state_set_sprite(enemy_hill_goblinshaman_shoot, 1, 0);
			
			if animation_hit_frame(4)
			{
				var shoot =	instance_create_depth(x + (12 * image_xscale), y- 24, 0, goblinshaman_attackob);
				shoot.image_xscale = image_xscale;
				shoot.speed = 4;
				if attack_side == 1 {shoot.direction = 20;}
				if attack_side == -1 {shoot.direction = 160;}
			}
		}
		
		
		if animation_end()	&& act_switch == true
		{
			act_count = act_count_set;
			{act_switch = false;}
			state = "Neutral"
		}
		
		
	
	#endregion
	break;
	

	case "Knockback" :
		#region Knockback_state
			if !instance_exists(oPlayer) break;
			act_count = act_count_set;
			knockback_state(enemy_hill_goblinshaman_knockback, "Neutral");
			if animation_hit_frame(0)
			{audio_play_sound(SE_enemy_knockback02, 1, false);}
			moving_speed = 0;

		#endregion
	break;
		
	case "Death" :
	#region
		state_set_sprite(enemy_hill_goblinshaman_death, 1, 0);
		if animation_hit_frame(0)
		{audio_play_sound(SE_enemy_death01, 1, false);}
		
		if animation_end()
		{instance_destroy();instance_create_depth(x, y-12, 0, dead_item);}

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
