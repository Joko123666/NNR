if oPlayer.state == "Death"
{state = "Neutral"; act_count = 45; show_debug_message(state);}



switch (state)
{
	case "Neutral" :		//상태 리셋
	#region Neutral state
		state_set_sprite(hill_bossgoblin_stand,1,0);
		if act_count >0
		{
			act_count -= 1;
			show_debug_message(act_count);
		
			side = sign(oPlayer.x - x);
			
			if HP < HP_checkpoint-50
			{state = "Knockback"}

		}
		else
		{
			state = "Act";	
		}

		
		
	#endregion
	break;
	
	case "Act" :		//행동 결정
	#region Act state
		
		image_xscale = sign(oPlayer.x - x);
		if image_xscale == 0 
		{
			image_xscale = 1;
		}

		act_num = random(100);
		show_debug_message(act_num);
		if act_num <= 20			//A
		{
			state = "AttackA";	
			moving_speed = 0;
		}
		else if act_num < 40		//B
		{
			state = "AttackB";
			act_switch = true;
			audio_play_sound(SE_bossgoblin_attackhawl, 5, false);
		}
		else if act_num <60			//공격 C
		{	
			state = "AttackC";
			act_count = 15;
			delay_count = 120;
		}
		
		else if act_num <80			//공격 D
		{	
			if numberof_minions <= 1
			{
				state = "AttackD";
				act_count = 15;
				delay_count = 120;
			}
			if numberof_minions > 1
			{
				act_count = 3;
				state = "Neutral";
			}
		}

		else 
		{
			act_count = 8;
			state = "Neutral"
		}
	
	#endregion
	break;
	
	case "AttackA" :
	#region Chase state
		if !instance_exists(oPlayer) break;
		state_set_sprite(hill_bossgoblin_attack_1, 1, 0);
		
		move_and_collide_enemy(moving_speed * image_xscale , 0);		//move according to moving_speed

		if animation_hit_frame(7)
		{
			moving_speed = 7;
			audio_play_sound(SE_patternset01, 1, 0);
		}
		if animation_hit_frame(8) or animation_hit_frame(9)
		{moving_speed = moving_speed * 0.8; creat_hitbox(x, y, self, hill_bossgoblin_attack_1_hitbox, knockback_power, 1, attack_power, image_xscale);}
		
		if animation_hit_frame(10)
		{moving_speed = moving_speed * 0.4; creat_hitbox(x, y, self, hill_bossgoblin_attack_1_hitbox, knockback_power, 1, attack_power, image_xscale);}
		
		if animation_hit_frame(11)
		{moving_speed = 0;}	

		if animation_end()
		{
			image_speed = 0;
			state = "Neutral";
			moving_speed = 0;
			act_count = 90;
			HP_checkpoint = HP;
		}
		
		

		
	#endregion
		break;
		
	case "AttackB" :
	#region Chase state
		if !instance_exists(oPlayer) break;
		if act_switch == true
		{state_set_sprite(hill_bossgoblin_attack_2_ready, 1, 0);}
		
		if act_switch == true && animation_end()
		{act_switch = false; image_index = 0; image_speed = 1; state_set_sprite(hill_bossgoblin_attack_2_charge, 1, 0)}

		if act_switch == false && place_meeting(x, y, oPlayer)
		{creat_hitbox(x, y, self, sprite_index, knockback_power, 1, attack_power, image_xscale);}
		
		if act_switch == false
		{
			move_and_collide_enemy(charge_speed * image_xscale , 0);		//move according to charge_speed
		}
		
		if act_switch == false && place_meeting(x, y, enemy_act_wall)
		{
			screen_shake(30, 8);
			audio_play_sound(SE_earthquake_01, 6, false);
			repeat(8)
			{instance_create_depth(x, y, 5, oparticle_12);}
			move_and_collide_enemy(charge_speed * -image_xscale, 0);
			state = "Stuned";
			act_count = 120;
		}

		
	#endregion
		break;
		
	case "AttackC" :
	#region Attack state
		state_set_sprite(hill_bossgoblin_attack_3, 1, 0);
		if animation_hit_frame(6) or animation_hit_frame(10)
		{creat_hitbox_effect(x, y, self, hill_bossgoblin_attack_3_hitbox, knockback_power * 2, 3, attack_power * 2, image_xscale, oparticle_13); 
			screen_shake(8, 4);
			audio_play_sound(SE_shoot_05, 6, false);
			}
		if animation_end()
		{state = "Neutral"; act_count = 90;}
	
	#endregion
		break;
		
		case "AttackD" :
	#region AttackD state
		{
			state_set_sprite(hill_bossgoblin_hawl, 1, 0)
			screen_shake(10, 3);
			
			if animation_hit_frame(7)
			{audio_play_sound(SE_bossgoblin_hawl, 5, false)}
			
			if animation_hit_frame(13)
			{instance_create_depth(340, 200, 0, oenemy_goblin_bosssummon);instance_create_depth(920, 200, 0, oenemy_goblin_bosssummon);}
			
			if animation_end()
			{state = "Neutral"; act_count = 90;}
			
		}
	
	#endregion
		break;

	case "Stuned" :
		state_set_sprite(hill_bossgoblin_stunned, 1, 0)
		if act_count > 0 
		{act_count--;}
		else
		{state = "Neutral"; act_count = 45;}
	
	#region


	#endregion
		break;
		
	case "Knockback" :
		#region Knockback_state
			
			state_set_sprite(hill_bossgoblin_knockback, 1, 0);
			
			
			if animation_end()
			{
				state = "Neutral";
				act_count += 10;
				HP_checkpoint = HP - 50;
			}
			

		#endregion
	break;
		
	case "Death" :
	#region
		
		state_set_sprite(hill_bossgoblin_death, 1, 0);
		
		animation_hit_frame(0)
		{if act_switch == true {audio_play_sound(SE_enemy_death04, 5, false);act_switch = false;}}
		
		if animation_end()
		{
			repeat(8)
			{instance_create_depth(x, y - 8, 0, oparticle_14);}
			
			instance_create_layer(x, y-24, "Instances", Item_orb_green);
			instance_destroy();
		}
		
		
	#endregion
	break;
}

if hit_swich == true
{
	if hit_count == 5
	{audio_play_sound(SE_bossgoblin_knockback, 1, false);}
	if hit_count > 0
	{hit_count--;}
	if hit_count <=0 
	{hit_swich = false;}
}

if global.mainstream >= 21
{instance_destroy();}
