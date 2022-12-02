if oPlayer.state == "Death"
{state = "Neutral"; act_count = 45; show_debug_message(state);}

show_debug_message(state);
show_debug_message(act_count);

act_count = count_decrease(act_count, 1, 0);

switch (state)
{
	case "Neutral" :		//상태 리셋
	#region Neutral state
		state_set_sprite(finalboss_act2,1,0);

		if act_count <= 0
		{state = "Act_Set"; image_index = 0; image_speed = 1;	act_count = 3;}

		#region 체력저하 패턴변경
	
		
	
		#endregion
		
	#endregion
	break;
	
	case "Act_Set" :		//행동 결정
	#region Act state
		if phase_state == "Phase_1"			//1페이즈일 경우
		{
			state_set_sprite(finalboss_act2,1,0);
			if act_count <= 0
			{
				act_num = random(100);
				show_debug_message(act_num);
				if act_num <= 20			//A 돌 상단 
				{	state = "Phase1_AttackA";		}
				else if act_num < 40		//B 돌 하단
				{	state = "Phase1_AttackB";		}
				else if act_num < 60		//공격 C 불 상단
				{	state = "Phase1_AttackC";		}
				else if act_num < 80		//공격 D 불 하단
				{	state = "Phase1_AttackD";		}
				else if act_num <= 100		//공격 F 방해블럭 생성
				{	state = "Phase1_AttackE";		}
				else 
				{
					act_count = 8;
					state = "Neutral"
				}
			}
		}
		
		
		if phase_state == "Phase_2"			//2페이즈일 경우
		{
			state_set_sprite(finalboss_act2,1,0);

			act_num = random(100);
			show_debug_message(act_num);
			if act_num <= 20			//A 세로레이저
			{
				state = "Phase2_AttackA";	
			}
			else if act_num < 40		//B 가로레이저
			{
				state = "Phase2_AttackB";	
			}
			else if act_num < 60			//십자스톤
			{	
				state = "Phase2_AttackC";	
			}
		
			else if act_num < 80			//미정
			{	
				state = "Phase2_AttackD";	
			}
		
			else if act_num <= 100		//회전 불공
			{	
				state = "Phase2_AttackE";
			}

			else 
			{
				act_count = 8;
				state = "Neutral"
			}
		}

	
	#endregion
	break;
	#region Phase1 attack
	case "Phase1_AttackA" :
	#region 기본 펀치
		if !instance_exists(oPlayer) break;
		state_set_sprite(finalboss2_attack1, 1, 0);

		if animation_hit_frame(8)
		{
			var fist =	instance_create_layer(x + image_xscale* 16, y - 24, "Instances", ofinalboss_attack_fist);
			fist.image_xscale = image_xscale;
		}


		if animation_end()
		{
			state = "Neutral";
			act_count = 60;
			if HP <= pattern_HP1
			{act_count = 50;}
			if HP <= pattern_HP2
			{act_count = 40;}
			image_index = 0;
		}
		
	#endregion
		break;
		
	case "Phase1_AttackB" :
	#region 추적 펀치
		if !instance_exists(oPlayer) break;
		state_set_sprite(finalboss_act2, 1, 0);
		
		var y_point = 12;
		var y_distance = 34;
		if animation_hit_frame(6)
		{
			var cast =	instance_create_depth(x + 24*image_xscale, y + y_point, -5, ofilnalboss_casting_10);
			cast.image_xscale = image_xscale/2;
			audio_play_sound(SE_magiccast_03, 1, false);
		}
		if animation_hit_frame(8)
		{
			var cast =	instance_create_depth(x + 24*image_xscale, y + y_point + y_distance, -5, ofilnalboss_casting_10);
			cast.image_xscale = image_xscale/2;
		}
		if animation_hit_frame(10)
		{
			var cast =	instance_create_depth(x + 24*image_xscale, y + y_point + y_distance*2, -5, ofilnalboss_casting_10);
			cast.image_xscale = image_xscale/2;
		}
		
		
		if HP <= 700	&& animation_hit_frame(9)
		{instance_create_layer(oPlayer.x + random_range(-64, 64)*image_xscale, 900, "Instances", ofilnalboss_casting_13);}
		
		if HP <= 400	&& animation_hit_frame(3)
		{instance_create_layer(x, y + 48 + irandom(64), "Instances", ofilnalboss_casting_14);}

		

		if animation_end()
		{
			state = "Neutral";
			act_count = 50;
			if HP <= 700
			{act_count = 60;}
			if HP <= 400
			{act_count = 70;}
			image_index = 0;
		}

		
	#endregion
		break;
		
	case "Phase1_AttackC" :
	#region 불 상단 캐스팅	
		if !instance_exists(oPlayer) break;
		state_set_sprite(finalboss_act2, 1, 0);
		
		var y_point = 64;
		var y_distance = 34;

		if animation_hit_frame(6)
		{
			var cast =	instance_create_depth(x + 24*image_xscale, y - y_point, -5, ofilnalboss_casting_11);
			cast.image_xscale = image_xscale/2;
			audio_play_sound(SE_magiccast_04, 1, false);
		}
		if animation_hit_frame(7)
		{
			var cast =	instance_create_depth(x + 24*image_xscale, y - y_point - y_distance, -5, ofilnalboss_casting_11);
			cast.image_xscale = image_xscale/2;
		}
		if animation_hit_frame(8)
		{
			var cast =	instance_create_depth(x + 24*image_xscale, y - y_point - y_distance*2, -5, ofilnalboss_casting_11);
			cast.image_xscale = image_xscale/2;
		}
		
		
		if HP <= 700	&& animation_hit_frame(9)
		{instance_create_layer(oPlayer.x + random_range(-64, 64)*image_xscale, 900, "Instances", ofilnalboss_casting_13);}
		
		if HP <= 400	&& animation_hit_frame(3)
		{instance_create_layer(x, y - 132 + irandom(64), "Instances", ofilnalboss_casting_14);}
		
		

		if animation_end()
		{
			state = "Neutral";
			act_count = 50;
			if HP <= 700
			{act_count = 60;}
			if HP <= 400
			{act_count = 70;}
			image_index = 0;
		}
	
	#endregion
		break;
		
	case "Phase1_AttackD" :
	#region 불 하단 캐스팅
		{
			if !instance_exists(oPlayer) break;
			state_set_sprite(finalboss_act2, 1, 0);
			
			var y_point = 12;
			var y_distance = 34;

			if animation_hit_frame(6)
			{
				var cast =	instance_create_depth(x + 24*image_xscale, y + y_point, -5, ofilnalboss_casting_11);
				cast.image_xscale = image_xscale/2;
				audio_play_sound(SE_magiccast_04, 1, false);
			}
			if animation_hit_frame(7)
			{
				var cast =	instance_create_depth(x + 24*image_xscale, y + y_point + y_distance, -5, ofilnalboss_casting_11);
				cast.image_xscale = image_xscale/2;
			}
			if animation_hit_frame(8)
			{
				var cast =	instance_create_depth(x + 24*image_xscale, y + y_point + y_distance*2, -5, ofilnalboss_casting_11);
				cast.image_xscale = image_xscale/2;
			}
			
			
			if HP <= 700	&& animation_hit_frame(9)
			{instance_create_layer(oPlayer.x + random_range(-64, 64)*image_xscale, 900, "Instances", ofilnalboss_casting_13);}
			
			if HP <= 400	&& animation_hit_frame(3)
			{instance_create_layer(x, y - 132 + irandom(64), "Instances", ofilnalboss_casting_14);}

			if animation_end()
			{
				act_count = 50;
				if HP <= 700
				{act_count = 60;}
				if HP <= 400
				{act_count = 70;}
				image_index = 0;
				state = "Neutral";
			}
			
		}
	
	#endregion
		break;
		
	case "Phase1_AttackE" :
	#region 차단 벽 생성
		{
			if !instance_exists(oPlayer) break;
			state_set_sprite(finalboss_act2, 1, 0);
			

			if animation_hit_frame(6)
			{
				instance_create_depth(oPlayer.x, oPlayer.y-24, -5, ofilnalboss_casting_12);
				audio_play_sound(SE_magiccast_01, 1, false);
			}
			if HP <= 400	&& animation_hit_frame(3)
			{instance_create_layer(x, y - 132 + irandom(64), "Instances", ofilnalboss_casting_14);}

			if animation_end()
			{
				state = "Neutral"; 
				act_count = 70;
			}
			
		}
	
	#endregion
		break;
	
	#endregion
	
	case "Phase2_AttackA" :
	#region 회전 레이저 -세로
		if !instance_exists(oPlayer) break;
		state_set_sprite(finalboss_act2, 1, 0);
		
		if animation_hit_frame(6)
		{
			instance_create_layer(oPlayer.x + random_range(-50, 50), oPlayer.y - 200, "Instances", ofilnalboss_casting_15);
		}

		if animation_end()
		{
			state = "Neutral";
			act_count = 70;
			last_act = "attackA";
		}
		
	#endregion
	break;
	
	case "Phase2_AttackB" :
	#region 회전 레이저 -가로
		if !instance_exists(oPlayer) break;
		state_set_sprite(finalboss_act2, 1, 0);
		
		if animation_hit_frame(6)
		{
			var dir = irandom(1)
			if dir == 0 {dir = -1;}
			var lasercast = instance_create_layer(oPlayer.x + 200*dir, oPlayer.y-20, "Instances", ofilnalboss_casting_17);
			if dir == 1
			{lasercast.image_angle = 180;}
			if dir == -1
			{lasercast.image_angle = 0;}
		}

		if animation_end()
		{
			state = "Neutral";
			act_count = 70;
			last_act = "attackB";
		}
		
	#endregion
	break;
		
	case "Phase2_AttackC" :
	#region 십자 스톤
		if !instance_exists(oPlayer) break;
		state_set_sprite(finalboss_act2, 1, 0);
		
		if animation_hit_frame(6)
		{
			instance_create_layer(oPlayer.x + random_range(-100, 100), oPlayer.y + random_range(-100, 100), "Instances", ofilnalboss_casting_16);
		}

		if animation_end()
		{
			state = "Neutral";
			act_count = 40;
			last_act = "attackA";
		}
		
	#endregion
	break;
	
	case "Phase2_AttackD" :
	#region X자 스톤			수정중
		if !instance_exists(oPlayer) break;
		state_set_sprite(finalboss_act2, 1, 0);
		
		if animation_hit_frame(6)
		{
			var attack = instance_create_layer(oPlayer.x + random_range(-100, 100),oPlayer.y + random_range(-100, 100), "Instances", ofilnalboss_casting_16);
			attack.image_angle = 45;
		}

		if animation_end()
		{
			state = "Neutral";
			act_count = 45;
			last_act = "attackA";
		}
		
	#endregion
	break;
	
	case "Phase2_AttackE" :
	#region 십자 스톤
		if !instance_exists(oPlayer) break;
		state_set_sprite(finalboss_act2, 1, 0);
		
		if animation_hit_frame(6)
		{
			instance_create_layer(oPlayer.x + random_range(-150, 150), oPlayer.y + random_range(-150, 150), "Instances", ofilnalboss_casting_18);
		}

		if animation_end()
		{
			state = "Neutral";
			act_count = 30;
			last_act = "attackE";
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
		
		state = "Neutral";
		HP = 50;
		
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
