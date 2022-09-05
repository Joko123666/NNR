if oPlayer.state == "Death"
{state = "Neutral"; act_count = 45; show_debug_message(state);}



switch (state)
{
	case "Neutral" :		//상태 리셋
	#region Neutral state
		state_set_sprite(finalboss_groundact,1,0);
		if act_count >0
		{
			act_count -= 1;
		}
		else
		{
			state = "Act_Set";	
		}

		#region 체력저하 충격파
	
		if phase_state == "Phase_1" && shockwave_count == 3	&& HP <= 700
		{
			oPlayer.x = oplayer_apport.x; 
			oPlayer.y = oplayer_apport.y - 24;
			audio_play_sound(SE_magiccast_01, 1, false);
			shockwave_count = 2;
			state = "Act_Set";
			//깔아놓은 공격 전부 삭제
			if instance_exists(ofinalboss_attack_rock)
			{instance_destroy(ofinalboss_attack_rock);}
			if instance_exists(ofinalboss_attack_fire)
			{instance_destroy(ofinalboss_attack_fire);}
			if instance_exists(ofinalboss_place_rock)
			{instance_destroy(ofinalboss_place_rock);}
			//블럭 삭제
			if instance_exists(finalboss_Wall)
			{instance_destroy(finalboss_Wall);}
			//블럭 재생성
			instance_create_layer(480, 1072, "walls", finalboss_Wall2);
			instance_create_layer(864, 1072, "walls", finalboss_Wall2);
			instance_create_layer(1248, 1072, "walls", finalboss_Wall2);
			instance_create_layer(672, 976, "walls", finalboss_Wall3);
			instance_create_layer(1056, 976, "walls", finalboss_Wall3);
		}
		if phase_state == "Phase_1" && shockwave_count == 2	&& HP <= 400
		{
			oPlayer.x = oplayer_apport.x; 
			oPlayer.y = oplayer_apport.y - 24;
			audio_play_sound(SE_magiccast_01, 1, false);
			shockwave_count = 1;
			state = "Act_Set";
			//깔아놓은 공격 전부 삭제
			if instance_exists(ofinalboss_attack_rock)
			{instance_destroy(ofinalboss_attack_rock);}
			if instance_exists(ofinalboss_attack_fire)
			{instance_destroy(ofinalboss_attack_fire);}
			if instance_exists(ofinalboss_place_rock)
			{instance_destroy(ofinalboss_place_rock);}
		}
		if phase_state == "Phase_1" && shockwave_count == 1	&& HP <= 100
		{
			oPlayer.x = oplayer_apport.x; 
			oPlayer.y = oplayer_apport.y - 24;
			audio_play_sound(SE_magiccast_01, 1, false);
			//깔아놓은 공격 전부 삭제
			if instance_exists(ofinalboss_attack_rock)
			{instance_destroy(ofinalboss_attack_rock);}
			if instance_exists(ofinalboss_attack_fire)
			{instance_destroy(ofinalboss_attack_fire);}
			if instance_exists(ofinalboss_place_rock)
			{instance_destroy(ofinalboss_place_rock);}
		
			//페이즈2로 이행
			phase_state = "Phase_2"
			maxHP = 3000;
			HP = maxHP;
			if instance_exists(ofinalboss_wall)
			{instance_destroy(ofinalboss_wall);}
		}
	
		#endregion
		
	#endregion
	break;
	
	case "Act_Set" :		//행동 결정
	#region Act state
		if phase_state == "Phase_1"			//1페이즈일 경우
		{
			state_set_sprite(finalboss_act,1,0);

			act_num = random(100);
			show_debug_message(act_num);
			if act_num <= 20			//A 돌 상단 
			{
				state = "Phase1_AttackA";	
			}
			else if act_num < 40		//B 돌 하단
			{
				state = "Phase1_AttackB";	
			}
			else if act_num < 60			//공격 C 불 상단
			{	
				state = "Phase1_AttackC";	
			}
		
			else if act_num < 80			//공격 D 불 하단
			{	
				state = "Phase1_AttackD";	
			}
		
			else if act_num <= 100		//공격 F 방해블럭 생성
			{	
				state = "Phase1_AttackE";
			}

			else 
			{
				act_count = 8;
				state = "Neutral"
			}
		}

	
	#endregion
	break;
	
	case "Phase1_AttackA" :
	#region 돌 상단 캐스팅
		if !instance_exists(oPlayer) break;
		state_set_sprite(finalboss_attack_cast, 1, 0);
		var y_point = 64;
		var y_distance = 34;
		
		if animation_hit_frame(6)
		{
			var cast =	instance_create_depth(x + 24*image_xscale, y - y_point, -5, ofilnalboss_casting_1);
			cast.image_xscale = image_xscale/2;
			audio_play_sound(SE_magiccast_03, 1, false);
		}
		if animation_hit_frame(8)
		{
			var cast =	instance_create_depth(x + 24*image_xscale, y - y_point - y_distance, -5, ofilnalboss_casting_1);
			cast.image_xscale = image_xscale/2;
		}
		if animation_hit_frame(10)
		{
			var cast =	instance_create_depth(x + 24*image_xscale, y - y_point - y_distance*2, -5, ofilnalboss_casting_1);
			cast.image_xscale = image_xscale/2;
		}
		
		if HP <= 700	&& animation_hit_frame(8)
		{instance_create_layer(oPlayer.x, 900, "Instances", ofilnalboss_casting_4);}
		if HP <= 700	&& animation_hit_frame(9)
		{instance_create_layer(oPlayer.x + 64, 900, "Instances", ofilnalboss_casting_4);}
		
		

		if animation_end()
		{
			image_speed = 0;
			state = "Neutral";
			act_count = 60;
			last_act = "attackA";
		}
		
	#endregion
		break;
		
	case "Phase1_AttackB" :
	#region 돌 하단 캐스팅 
		if !instance_exists(oPlayer) break;
		state_set_sprite(finalboss_attack_cast, 1, 0);
		
		var y_point = 12;
		var y_distance = 34;

		if animation_hit_frame(6)
		{
			var cast =	instance_create_depth(x + 24*image_xscale, y + y_point, -5, ofilnalboss_casting_1);
			cast.image_xscale = image_xscale/2;
			audio_play_sound(SE_magiccast_03, 1, false);
		}
		if animation_hit_frame(8)
		{
			var cast =	instance_create_depth(x + 24*image_xscale, y + y_point + y_distance, -5, ofilnalboss_casting_1);
			cast.image_xscale = image_xscale/2;
		}
		if animation_hit_frame(10)
		{
			var cast =	instance_create_depth(x + 24*image_xscale, y + y_point + y_distance*2, -5, ofilnalboss_casting_1);
			cast.image_xscale = image_xscale/2;
		}
		
		if HP <= 700	&& animation_hit_frame(8)
		{instance_create_layer(oPlayer.x, 900, "Instances", ofilnalboss_casting_4);}
		if HP <= 700	&& animation_hit_frame(9)
		{instance_create_layer(oPlayer.x + 64, 900, "Instances", ofilnalboss_casting_4);}
		

		if animation_end()
		{
			image_speed = 0;
			state = "Neutral";
			act_count = 60;
		}

		
	#endregion
		break;
		
	case "Phase1_AttackC" :
	#region 불 상단 캐스팅	
		if !instance_exists(oPlayer) break;
		state_set_sprite(finalboss_attack_cast, 1, 0);
		
		var y_point = 64;
		var y_distance = 34;

		if animation_hit_frame(6)
		{
			var cast =	instance_create_depth(x + 24*image_xscale, y - y_point, -5, ofilnalboss_casting_2);
			cast.image_xscale = image_xscale/2;
			audio_play_sound(SE_magiccast_04, 1, false);
		}
		if animation_hit_frame(7)
		{
			var cast =	instance_create_depth(x + 24*image_xscale, y - y_point - y_distance, -5, ofilnalboss_casting_2);
			cast.image_xscale = image_xscale/2;
		}
		if animation_hit_frame(8)
		{
			var cast =	instance_create_depth(x + 24*image_xscale, y - y_point - y_distance*2, -5, ofilnalboss_casting_2);
			cast.image_xscale = image_xscale/2;
		}
		
		if HP <= 700	&& animation_hit_frame(8)
		{instance_create_layer(oPlayer.x, 900, "Instances", ofilnalboss_casting_4);}
		if HP <= 700	&& animation_hit_frame(9)
		{instance_create_layer(oPlayer.x - 64, 900, "Instances", ofilnalboss_casting_4);}
		

		if animation_end()
		{
			image_speed = 0;
			state = "Neutral";
			act_count = 60;
		}
	
	#endregion
		break;
		
	case "Phase1_AttackD" :
	#region 불 하단 캐스팅
		{
			if !instance_exists(oPlayer) break;
			state_set_sprite(finalboss_attack_cast, 1, 0);
			
			var y_point = 12;
			var y_distance = 34;

			if animation_hit_frame(6)
			{
				var cast =	instance_create_depth(x + 24*image_xscale, y + y_point, -5, ofilnalboss_casting_2);
				cast.image_xscale = image_xscale/2;
				audio_play_sound(SE_magiccast_04, 1, false);
			}
			if animation_hit_frame(7)
			{
				var cast =	instance_create_depth(x + 24*image_xscale, y + y_point + y_distance, -5, ofilnalboss_casting_2);
				cast.image_xscale = image_xscale/2;
			}
			if animation_hit_frame(8)
			{
				var cast =	instance_create_depth(x + 24*image_xscale, y + y_point + y_distance*2, -5, ofilnalboss_casting_2);
				cast.image_xscale = image_xscale/2;
			}
			
			if HP <= 700	&& animation_hit_frame(8)
			{instance_create_layer(oPlayer.x, 900, "Instances", ofilnalboss_casting_4);}
			if HP <= 700	&& animation_hit_frame(9)
			{instance_create_layer(oPlayer.x - 64, 900, "Instances", ofilnalboss_casting_4);}

			if animation_end()
			{
				image_speed = 0;
				state = "Neutral";
				act_count = 60;
			}
			
		}
	
	#endregion
		break;
		
	case "Phase1_AttackE" :
	#region 차단 벽 생성
		{
			if !instance_exists(oPlayer) break;
			state_set_sprite(finalboss_attack_cast, 1, 0);
			

			if animation_hit_frame(6)
			{
				instance_create_depth(oPlayer.x, oPlayer.y-24, -5, ofilnalboss_casting_3);
				audio_play_sound(SE_magiccast_01, 1, false);
			}

			if animation_end()
			{
				image_speed = 0;
				state = "Neutral"; 
				act_count = 60;
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
