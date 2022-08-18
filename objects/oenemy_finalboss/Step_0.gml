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
		}
		else
		{
			state = "Act_Set";	
		}

		
		
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
			else if act_num < 60			//공격 C 부두 소환술
			{	

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
		}

	
	#endregion
	break;
	
	case "Phase1_AttackA" :
	#region 돌 상단 캐스팅
		if !instance_exists(oPlayer) break;
		state_set_sprite(finalboss_attack_cast, 1, 0);

		if animation_hit_frame(6)
		{
			instance_create_depth(x + 24*image_xscale, y - 36, -5, ofilnalboss_casting_1);
		}
		if animation_hit_frame(7)
		{
			instance_create_depth(x + 24*image_xscale, y - 40, -5, ofilnalboss_casting_1);
		}
		if animation_hit_frame(8)
		{
			instance_create_depth(x + 24*image_xscale, y - 44, -5, ofilnalboss_casting_1);
		}
		

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

		if animation_hit_frame(6)
		{
			instance_create_depth(x + 24*image_xscale, y - 24, -5, ofilnalboss_casting_1);
		}
		if animation_hit_frame(7)
		{
			instance_create_depth(x + 24*image_xscale, y - 20, -5, ofilnalboss_casting_1);
		}
		if animation_hit_frame(8)
		{
			instance_create_depth(x + 24*image_xscale, y - 16, -5, ofilnalboss_casting_1);
		}
		

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
		
		if !instance_exists(oPlayer) break;
		state_set_sprite(finalboss_attack_cast, 1, 0);

		if animation_hit_frame(6)
		{
			instance_create_depth(x + 24*image_xscale, y - 40, -5, ofilnalboss_casting_2);
		}
		if animation_hit_frame(7)
		{
			instance_create_depth(x + 24*image_xscale, y - 44, -5, ofilnalboss_casting_2);
		}
		if animation_hit_frame(8)
		{
			instance_create_depth(x + 24*image_xscale, y - 48, -5, ofilnalboss_casting_2);
		}
		

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

			if animation_hit_frame(6)
			{
				instance_create_depth(x + 24*image_xscale, y - 20, -5, ofilnalboss_casting_2);
			}
			if animation_hit_frame(7)
			{
				instance_create_depth(x + 24*image_xscale, y - 16, -5, ofilnalboss_casting_2);
			}
			if animation_hit_frame(8)
			{
				instance_create_depth(x + 24*image_xscale, y - 12, -5, ofilnalboss_casting_2);
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
		
	case "AttackE" :
	#region 차단 벽 생성
		{
			if !instance_exists(oPlayer) break;
			state_set_sprite(finalboss_attack_cast, 1, 0);

			if animation_hit_frame(6)
			{
				instance_create_depth(oPlayer.x, oPlayer.y, -5, ofilnalboss_casting_3);
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
