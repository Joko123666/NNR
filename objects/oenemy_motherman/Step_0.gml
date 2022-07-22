if oPlayer.state == "Death"
{state = "Neutral"; act_count = 45; show_debug_message(state);}



switch (state)
{
	case "Neutral" :		//상태 리셋
	#region Neutral state
		state_set_sprite(enemy_vally_motherman_stand,1,0);
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
		
		
		act_num = random(100);
		show_debug_message(act_num);
		if act_num <= 20			//A
		{
			state = "AttackA";	
			moving_speed = 0;
		}
		else if act_num < 40		//B 우측 충전
		{
			if electric_charge_B == false
				{state = "AttackB";	image_index = 0;}
			if electric_charge_B == true
				{state = "AttackC";	image_index = 0;}
			delay_count = 90;
		}
		else if act_num <60			//공격 C 좌측충전
		{	
			if electric_charge_A == false
				{state = "AttackC";	image_index = 0;}
			if electric_charge_A == true
				{state = "AttackB";	image_index = 0;}
			delay_count = 90;
		}
		
		else if act_num <80			//공격 E 부하 드랍
		{	
			if numberof_minions <= 1
			{
				state = "AttackE";
				act_count = 15;
				delay_count = 120;
			}
			if numberof_minions > 1
			{
				act_count = 3;
				state = "Neutral";
			}
		}
		
		else if act_num <90			//공격 F 미사일 드랍
		{	
			state = "AttackF";
			act_count = 15;
			delay_count = 120;	
		}

		else 
		{
			act_count = 8;
			state = "Neutral"
		}
		//전기봉 차징 완료 파생
		if electric_charge_A == true && electric_charge_B == true
		{
			state = "AttackD";
			act_count = 10;
			delay_count = 150;
		}
	
	#endregion
	break;
	
	case "AttackA" :
	#region 지진 패턴
		if !instance_exists(oPlayer) break;
		state_set_sprite(enemy_vally_motherman_attack1, 1, 0);
		if animation_hit_frame(1)
		{audio_play_sound(SE_motherman_alart01, 1, false);}
		

		if animation_hit_frame(10)
		{
			screen_shake(20, 20);
			if oPlayer.isground == true
			{oPlayer.vsp = -18; screen_shake(25, 30);}
			create_particle(x+ 124, y+440,oparticle_01, random_range(6, 10));
			creat_hitbox(x + 124, y+440, self, hit_48, knockback_power, 5, attack_power*2, image_xscale);
			audio_play_sound(SE_earthquake_01, 1, false);
		}

		if animation_end()
		{
			image_speed = 0;
			state = "Neutral";
			act_count = 90;
			HP_checkpoint = HP;
		}
		
	#endregion
		break;
		
	case "AttackB" :
	#region 우측 전기봉 충전
		if !instance_exists(oPlayer) break;
		
		state_set_sprite(enemy_vally_motherman_attack2, 1, 0);
		
		if animation_hit_frame(1)
		{audio_play_sound(SE_electric_charge, 1, false);}
		if animation_hit_frame(12)
		{audio_play_sound(SE_electric_wave_02, 1, false);}
		if animation_hit_frame(12) or animation_hit_frame(13) or animation_hit_frame(14) or animation_hit_frame(15)
		{
			creat_hitbox(x, y, self, enemy_motherman_attack2_hitbox, knockback_power, 4, attack_power, image_xscale);
			create_particle(452, 416, oparticle_16, 7);
			create_particle(300, 328, oparticle_16, 10);
		}
		
		if animation_end()
		{
			image_speed = 0;
			state = "Neutral";
			act_count = 90;
			electric_charge_B = true;
		}

		
	#endregion
		break;
		
	case "AttackC" :
	#region 죄측 전기봉 충전
		if !instance_exists(oPlayer) break;
		
		state_set_sprite(enemy_vally_motherman_attack3, 1, 0);
		
		if animation_hit_frame(1)
		{audio_play_sound(SE_electric_charge, 1, false);}
		if animation_hit_frame(12)
		{audio_play_sound(SE_electric_wave_02, 1, false);}
		if animation_hit_frame(12) or animation_hit_frame(13) or animation_hit_frame(14) or animation_hit_frame(15)
		{
			creat_hitbox(x, y, self, enemy_motherman_attack3_hitbox, knockback_power, 4, attack_power, image_xscale);
			create_particle(x+32, x+416, oparticle_16, 7);
			create_particle(y+300, y+328, oparticle_16, 10);
		}
		
		if animation_end()
		{
			image_speed = 0;
			state = "Neutral";
			act_count = 90;
			electric_charge_A = true;
		}
	
	#endregion
		break;
		
	case "AttackD" :
	#region 좌우 전기봉 충전 완료
		{
			state_set_sprite(enemy_vally_motherman_attack4, 1, 0);
			
			if animation_hit_frame(6)
			{audio_play_sound(SE_electric_wave_01, 1, false);}
			if animation_hit_frame(6) or animation_hit_frame(7) or animation_hit_frame(8) or animation_hit_frame(9) or animation_hit_frame(10) or animation_hit_frame(11) or animation_hit_frame(12)
			{
				creat_hitbox(x, y, self, enemy_motherman_attack4_hitbox, knockback_power, 5, attack_power, image_xscale);
			}
		
			if animation_end()
			{
				image_speed = 0;
				state = "Neutral";
				act_count = 90;
				electric_charge_A = false;
				electric_charge_B = false;
			}
			
		}
	
	#endregion
		break;
		
	case "AttackE" :
	#region attackE 쫄드랍
		{
			state_set_sprite(enemy_vally_motherman_attack5, 1, 0);
		
			if animation_hit_frame(6) && numberof_minions < 2
			{
				var minions = instance_create_depth(x+408, y+294, 2, ob_motherman_rockman);
				minions.vsp = -5;
				minions.direction = point_direction(minions.x, minions.y, oPlayer.x, oPlayer.y);
				minions.speed = 2;
				numberof_minions ++;
				audio_play_sound(SE_motherman_spawn01, 1, false);
			}
			if animation_hit_frame(6) && numberof_minions >= 2
			{
				var minions = instance_create_depth(x+408, y+304, 2, ob_motherman_rockman);
				minions.state = "Death";
				minions.vsp = -5;
				minions.direction = point_direction(minions.x, minions.y, oPlayer.x, oPlayer.y);
				minions.speed = 2;
				numberof_minions ++;
			}
		
			if animation_end()
			{
				image_speed = 0;
				state = "Neutral";
				act_count = 90;
			}
			
		}
	
	#endregion
		break;

	case "AttackF" :
	#region attackF 미사일 드랍
		{
			state_set_sprite(enemy_vally_motherman_attack6, 1, 0);
		
			if animation_hit_frame(7) or animation_hit_frame(11)
			{
				instance_create_depth(x+408, y+294, 2, ob_motheramn_missile);
				audio_play_sound(SE_motherman_spawn02, 1, false);
			}
		
			if animation_end()
			{
				image_speed = 0;
				state = "Neutral";
				act_count = 90;
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
		
		state_set_sprite(enemy_vally_motherman_death, 1, 0);

		if animation_hit_frame(1) or animation_hit_frame(3) or animation_hit_frame(5) or animation_hit_frame(7) or animation_hit_frame(9) or animation_hit_frame(11) or animation_hit_frame(12)
		{
			repeat(8)
			{instance_create_depth(random_range(x + 50, x + 300), random_range(y + 370, y + 470), 0, oparticle_15);}
			repeat(8)
			{instance_create_depth(random_range(x + 50, x + 300), random_range(y + 370, y + 470), 0, oparticle_17);}
			repeat(8)
			{instance_create_depth(random_range(x + 50, x + 300), random_range(y + 370, y + 470), 0, oeffect_explosion01);}
			audio_play_sound(SE_explosion01, 1, false);
		}

		
		if animation_hit_frame(13)
		{screen_shake(30, 90);audio_play_sound(SE_earthquake_02, 1, false);}
		
		if animation_end()
		{
			instance_destroy();
		}
		
		
	#endregion
	break;
}

if electric_charge_A == true
	{
		creat_hitbox(x, y, self, enemy_vally_motherman_charge_A, 3, 1, attack_power/2, image_xscale); 
		create_particle(x+32, y+416, oparticle_16, 2);
	}
if electric_charge_B == true
	{
		creat_hitbox(x, y, self, enemy_vally_motherman_charge_B, 3, 1, attack_power/2, image_xscale);
		create_particle(x+452, y+416, oparticle_16, 2);
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
