if oPlayer.state == "Death"
{state = "Neutral"; act_count = 45; show_debug_message(state);}



switch (state)
{
	case "Neutral" :		//상태 리셋
	#region Neutral state
		state_set_sprite(skullboss_neutral,1,0);
		if act_count >0
		{
			act_count -= 1;
			show_debug_message(act_count);
		}
		else
		{
			state = "Act_Set";	
		}

		
		
	#endregion
	break;
	
	case "Act_Set" :		//행동 결정
	#region Act state
		state_set_sprite(skullboss_act,1,0);
		
		act_num = random(100);
		show_debug_message(act_num);
		if act_num <= 25			//A 우 주먹 내려치기
		{
			this_act = "attackA";
			if this_act == last_act
			{act_count = 3; state = "AttackB"; break;}
			state = "AttackA";	
		}
		else if act_num < 50		//B 좌 주먹 내리친 후 휩쓸기
		{
			this_act = "attackB";
			if this_act == last_act
			{act_count = 3; state = "AttackA"; break;}
			state = "AttackB";	
			delay_count = 90;
		}
		else if act_num < 60			//공격 C 부두 소환술
		{	
			if numberof_minions <= 1
			{
				this_act = "attackC";
				if this_act == last_act
				{act_count = 3; state = "AttackE"; break;}
				state = "AttackC";
				act_count = 15;
				delay_count = 120;
			}
			if numberof_minions > 1
			{
				act_count = 3;
				state = "AttackE";
			}
			delay_count = 90;
		}
		
		else if act_num < 80			//공격 D 세게 내려치기
		{	
			this_act = "attackD";
			if this_act == last_act
			{act_count = 3; state = "AttackB"; break;}
			state = "AttackE";	
			delay_count = 90;
		}
		
		else if act_num <= 100		//공격 F 충격파
		{	
			this_act = "attackE";
			if this_act == last_act
			{act_count = 3; state = "AttackD"; break;}
			state = "AttackE";
			act_count = 15;
			delay_count = 120;	
		}

		else 
		{
			act_count = 8;
			state = "Neutral"
		}

	
	#endregion
	break;
	
	case "AttackA" :
	#region 우 주먹 내려치기
		if !instance_exists(oPlayer) break;
		state_set_sprite(skullboss_attackA, 1, 0);
		if animation_hit_frame(1)
		{audio_play_sound(SE_bone02, 1, false);}
		

		if animation_hit_frame(8)
		{
			screen_shake(30, 20);
			create_particle(x+ 120, y-20,oparticle_18, random_range(6, 10));
			creat_hitbox(x, y, self, skullboss_attackA_hitbox, knockback_power, 5, attack_power*2, image_xscale);
			audio_play_sound(SE_earthquake_01, 1, false);
			var bone = instance_create_layer(x+ 120, y-48, "Instances", oparticle_19);
			bone.direction = 100;
			bone.speed = 12;
			var bone = instance_create_layer(x+ 120, y-48, "Instances", oparticle_19);
			bone.direction = 110;
			bone.speed = 11;
			var bone = instance_create_layer(x+ 120, y-48, "Instances", oparticle_19);
			bone.direction = 120;
			bone.speed = 10;
		}
		
		if animation_hit_frame(10)
			{
				instance_create_layer(oPlayer.x, y-200, "Instances", oparticle_20);

			}
		

		if animation_end()
		{
			image_speed = 0;
			state = "Neutral";
			act_count = 85;
			last_act = "attackA";
		}
		
	#endregion
		break;
		
	case "AttackB" :
	#region 좌주먹 내려친 후 스윕
		if !instance_exists(oPlayer) break;
		
		state_set_sprite(skullboss_attackB, 1, 0);
		if animation_hit_frame(1)
		{audio_play_sound(SE_bone02, 1, false);}
		
		if animation_hit_frame(10)
		{
			screen_shake(20, 20);
			create_particle(x - 120, y-20,oparticle_18, random_range(6, 10));
			creat_hitbox(x, y, self, skullboss_attackB_hitbox1, knockback_power, 5, attack_power*2, image_xscale);
			audio_play_sound(SE_earthquake_01, 1, false);
			audio_play_sound(SE_bone01, 1, false);
		}
		if animation_hit_frame(16)
		{
			screen_shake(10, 40);
			for(i=0; i<12; i++)
			{instance_create_depth((x - 120 + i*20) + random(10), y-28, 12, oparticle_18)}
			creat_hitbox(x, y, self, skullboss_attackB_hitbox2, knockback_power, 5, attack_power*2, image_xscale);
			audio_play_sound(SE_earthquake_01, 1, false);
			audio_play_sound(SE_bone01, 1, false);
		}
		
		
		if animation_end()
		{
			image_speed = 0;
			state = "Neutral";
			act_count = 115;
			electric_charge_B = true;
			last_act = "attackB";
		}

		
	#endregion
		break;
		
	case "AttackC" :
	#region 사령 소환술
		if !instance_exists(oPlayer) break;
		
		state_set_sprite(skullboss_attackC, 1, 0);
		
		if animation_hit_frame(4)
		{audio_play_sound(SE_bone02, 1, false);}
		
		if animation_hit_frame(17) && numberof_minions < 4
			{
				repeat(3)
				{
					var minions = instance_create_layer(x+irandom_range(-120, 120), y-180, "Instances", oenemy_skeleton_boss);
					minions.vsp = -5;
					numberof_minions ++;
					audio_play_sound(SE_motherman_spawn01, 1, false);
				}
				audio_play_sound(SE_bone02, 1, false);
			}
		if animation_hit_frame(17) && numberof_minions >= 4
			{
				oenemy_skeleton_boss.state = "Explosion";
				repeat(3)
				{
					var minions = instance_create_layer(x+irandom_range(-120, 120), y-240, "Instances", oenemy_skeleton_boss);
					minions.direction = point_direction(minions.x, minions.y, oPlayer.x, oPlayer.y);
					minions.speed = 2;
					numberof_minions ++;
				}
			}
		
		if animation_end()
		{
			image_speed = 0;
			state = "Neutral";
			act_count = 45;
			last_act = "attackC";
		}
	
	#endregion
		break;
		
	case "AttackD" :
	#region 세게 내려치기
		{
			state_set_sprite(skullboss_attackD, 1, 0);
			
			if animation_hit_frame(1)
			{audio_play_sound(SE_bone02, 1, false);}
			
			if animation_hit_frame(14)
			{
				screen_shake(40, 20);
				create_particle(x , y,oparticle_18, 1);
				creat_hitbox(x, y, self, skullboss_attackD_hitbox, knockback_power, 5, attack_power*2, image_xscale);
				audio_play_sound(SE_earthquake_01, 1, false);
				if oPlayer.isground == true
				{oPlayer.vsp = -18; screen_shake(25, 30);instance_create_layer(oPlayer.x, y+4, "Instances", oenemy_bonepillar);}
			}

		
			if animation_end()
			{
				image_speed = 0;
				state = "Neutral";
				act_count = 110;
				last_act = "attackD";
			}
			
		}
	
	#endregion
		break;
		
	case "AttackE" :
	#region 충격파
		{
			state_set_sprite(skullboss_attackE, 1, 0);
			if animation_hit_frame(1)
			{audio_play_sound(SE_bone01, 1, false);}
		
			if animation_hit_frame(11)	&& oPlayer.invincibility == false
			{
				if oPlayer.x > x	//플레이어가 우측
				{
					with (oPlayer) {ismoving = true; moving_direction = 0; moving_speed = 10;vsp = -6;}
				}
				if oPlayer.x <= x	//플레이어가 좌측
				{
					with (oPlayer) {ismoving = true; moving_direction = 180; moving_speed = 10;vsp = -6;}
				}
			}
			
			if animation_hit_frame(11)
			{create_particle(x, y, skullboss_effect_E, 1); audio_play_sound(SE_explosion01, 1, false);}
		
			if animation_end()
			{
				image_speed = 0;
				state = "Neutral";
				act_count = 95;
				last_act = "attackE";
			}
			
		}
	
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
		
		state_set_sprite(skullboss_death, 1, 0);
		if animation_end()
		{
			repeat(8)
			{instance_create_depth(x, y - 8, 0, oparticle_14);}
			instance_create_depth(x, y-64, 1, Item_orb_blue);
			instance_destroy();
		}
		
		
	#endregion
	break;
}


	
if hit_swich == true
{
	if hit_count == 5
	{audio_play_sound(SE_enemy_knockback03, 1, false);}
	if hit_count > 0
	{hit_count--;}
	if hit_count <=0 
	{hit_swich = false;}
}
