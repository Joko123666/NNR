if oPlayer.state == "Death"
{state = "Neutral"; act_count = 45; show_debug_message(state);}

show_debug_message(state);

act_count = count_decrease(act_count, 1, 0);


switch (state)
{
	case "Neutral" :		//상태 리셋
	#region Neutral state
		state_set_sprite(finalboss_defalt4,1,0);
		
		vsp = vsp + grv;				//중력 계산
		if (place_meeting(x,y+vsp,oWall))	//공중에 떠있을 경우
		{
			while (!place_meeting(x,y+sign(vsp),oWall))
			{	
				y = y + sign(vsp);	
			}
			vsp = 0;
		}
		y = y + vsp;

		if act_count <= 0
		{state = "Act_Set"; image_index = 0; image_speed = 1;	act_count = 3;}
		
		//죽을때마다 뱉는 대사
	
		if global.language == "Korean"
		{var text_line_num = 13;}
		if global.language == "English"
		{var text_line_num = 41;}
		
		if global.Deathcount_total == 0
		{deadtext = scr_name[text_line_num + global.Deathcount_total];}
		if global.Deathcount_total == 1
		{deadtext = scr_name[text_line_num + global.Deathcount_total];}
		if global.Deathcount_total == 2
		{deadtext = scr_name[text_line_num + global.Deathcount_total];}
		if global.Deathcount_total == 3
		{deadtext = scr_name[text_line_num + global.Deathcount_total];}
		if global.Deathcount_total == 4
		{deadtext = scr_name[text_line_num + global.Deathcount_total];}
		if global.Deathcount_total == 5
		{deadtext = scr_name[text_line_num + global.Deathcount_total];}
		if global.Deathcount_total >= 6
		{deadtext = scr_name[text_line_num + 6];}

		#region 체력저하 패턴변경
	
		
	
		#endregion
		
	#endregion
	break;
	
	case "Act_Set" :		//행동 결정
	#region Act state
		if phase_state == "Phase_1"			//1페이즈일 경우
		{
			state_set_sprite(finalboss_talk3,1,0);
			
			if act_count <= 0
			{
				if oPlayer.x > x {image_xscale = 1;}
				if oPlayer.x < x {image_xscale = -1;}
				act_num = random(100);
				show_debug_message(act_num);
				if act_num <= 20			//A 펀치
				{	state = "Phase1_AttackA";		}
				else if act_num < 40		//B 추적샷
				{	state = "Phase1_AttackB";		}
				else if act_num < 60		//C 진각, 승룡
				{	state = "Phase1_AttackC";		}
				else if act_num < 70		//D 보디프레스
				{	state = "Phase1_AttackD";		}
				else if act_num <= 85		//E 몸통박치기
				{	state = "Phase1_AttackE";		}
				else if act_num <= 100		//E 레이저 설치 
				{	state = "Phase1_AttackF";		}
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

		if animation_hit_frame(1)
		{
			if oPlayer.x > x {image_xscale = 1;}
			if oPlayer.x < x {image_xscale = -1;}
		}
		if animation_hit_frame(8)
		{
			var fist =	instance_create_layer(x + image_xscale* 16, y - 24, "Instances", ofinalboss_attack_fist);
			fist.image_xscale = image_xscale;
			screen_shake_x(10, 10);
			audio_play_sound(SE_death01, 1, 0);
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
	#region 추적 공격
		if !instance_exists(oPlayer) break;
		state_set_sprite(finalboss2_attack2, 1, 0);
		
		if animation_hit_frame(3)
		{
			x_point = oPlayer.x; 
			instance_create_depth(x_point, y, 1, ofinalboss_attack_fist3);
			audio_play_sound(SE_patternset01, 1, 0);
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
		
	case "Phase1_AttackC" :
	#region 진각, 추적승룡
		if !instance_exists(oPlayer) break;
		state_set_sprite(finalboss2_attack3_b, 1, 0);
		
		if animation_hit_frame(8)
		{
			if oPlayer.isground == true
			{
				oPlayer.vsp = -5; screen_shake(15, 10);	
				act_set = true;
				creat_hitbox(oPlayer.x, oPlayer.y, self, hit_16, 1, 1, 0, image_xscale);
			}
			audio_play_sound(SE_crush_01, 1, 0);
		}
		if act_set == true	&& animation_hit_frame(10)
		{
			state = "Phase1_AttackC_C";
			image_index = 0;
		}
		
		if animation_end()
		{
			state = "Phase1_AttackC_B";
			act_count = 60;
			if HP <= pattern_HP1
			{act_count = 50;}
			if HP <= pattern_HP2
			{act_count = 40;}
			image_index = 0;
			act_set = false;
		}
	
	#endregion
		break;
	case "Phase1_AttackC_B" :
	#region 승룡
		if !instance_exists(oPlayer) break;
		state_set_sprite(finalboss2_attack3_c, 1, 0);
		if animation_hit_frame(1)
		{
			if oPlayer.x > x {image_xscale = 1;}
			if oPlayer.x < x {image_xscale = -1;}
		}
		
		if animation_hit_frame(4)
		{
			instance_create_layer(x + image_xscale*36, y, "Instances", ofinalboss_attack_fist2);
			screen_shake(10, 10);
			audio_play_sound(SE_death01, 1, 0);
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
			act_set = false;
		}
	
	#endregion
		break;
		
	case "Phase1_AttackC_C" :
	#region 추적
		if !instance_exists(oPlayer) break;
		state_set_sprite(finalboss2_attack3_d, 1, 0);
		if animation_hit_frame(1)
		{
			if oPlayer.x > x {image_xscale = 1;}
			if oPlayer.x < x {image_xscale = -1;}
			audio_play_sound(SE_dodge_02, 1, 0);
		}
		
		if animation_hit_frame(3)
		{
			x = oPlayer.x - 24*image_xscale;
			oPlayer.invincibility = false;
			oPlayer.invincibility_count = 0;
		}
		
		if animation_end()
		{
			state = "Phase1_AttackC_B";
		}
	
	#endregion
		break;
		
	case "Phase1_AttackD" :
	#region 바디프레스 - 점프
		{
			if !instance_exists(oPlayer) break;
			state_set_sprite(finalboss2_attack4_a, 1, 0);
			
			if animation_hit_frame(8)
			{x_point = oPlayer.x;audio_play_sound(SE_dodge_01, 1, 0);}

			if animation_end()
			{
				
				image_index = 0;
				x = x_point;
				y = 224;
				state = "Phase1_AttackD_B";
				image_speed = 0;
			}
		}
	#endregion
		break;
	case "Phase1_AttackD_B" :
	#region 바디프레스 - 프레스
		{
			if !instance_exists(oPlayer) break;
			state_set_sprite(finalboss2_attack4_b, 0, 0);
			
			vsp = vsp + grv;				//중력 계산
			if (place_meeting(x,y+vsp,oWall))	//공중에 떠있을 경우
			{
				while (!place_meeting(x,y+sign(vsp),oWall))
				{	
					y = y + sign(vsp);	
				}
				vsp = 0;
			}
			y = y + vsp;
			
			if vsp > 0
			{
				instance_create_layer(x, y, "Instances", ofinalboss_attack_fist2_shadow2);
				if place_meeting(x, y, oPlayer)
				{creat_hitbox(oPlayer.x, oPlayer.y, self, hit_16, 9, 1, attack_power, image_xscale);}
			}
			
			if vsp == 0
			{image_speed = 1;}
			if animation_hit_frame(1)
			{
				screen_shake(30, 20); 
				instance_create_layer(x + 12, y, "Instances", ofinalboss_attack_shockwave);
				var shock = instance_create_layer(x - 12, y, "Instances", ofinalboss_attack_shockwave);
				shock.image_xscale = -1;
				audio_play_sound(SE_earthquake_01, 1, 0);
				
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
		}
	#endregion
		break;
		
	case "Phase1_AttackE" :
	#region 대쉬 이후 패턴결정
		{
			if !instance_exists(oPlayer) break;
			state_set_sprite(finalboss2_attack5, 1, 0);
			
			image_speed = 1;
			
			if animation_hit_frame(1)
			{
				x_point = oPlayer.x; 
				if oPlayer.x > x {image_xscale = 1;}
				if oPlayer.x < x {image_xscale = -1;}
			}
			
			if animation_hit_frame(5)
			{
				pattern_random = irandom(2);
				audio_play_sound(SE_moveskill, 1, 0);
			}
			if image_index > 5	&& image_index < 11	
			{
				move_and_collide_enemy(4 * image_xscale, 0);
				if place_meeting(x, y, oPlayer)
				{creat_hitbox(oPlayer.x, oPlayer.y, self, hit_48, 3, 1, 0, image_xscale);}
			}
			
			if animation_end()
			{
				if pattern_random == 0
				{state = "Neutral"; act_count = 30;}
				if pattern_random == 1
				{state = "Phase1_AttackE_B"; act_count = 30;}
				if pattern_random == 2
				{state = "Phase1_AttackE_C"; act_count = 30;}
			}
		}
		
	#endregion
		break;
	case "Phase1_AttackE_B" :
	#region 대쉬 이후 펀치
		if !instance_exists(oPlayer) break;
		state_set_sprite(finalboss2_attack1, 1.2, 6);

		if animation_hit_frame(6)
		{
			if oPlayer.x > x {image_xscale = 1;}
			if oPlayer.x < x {image_xscale = -1;}
		}
		if animation_hit_frame(8)
		{
			var fist =	instance_create_layer(x + image_xscale* 16, y - 24, "Instances", ofinalboss_attack_fist);
			fist.image_xscale = image_xscale;
			screen_shake_x(10, 10);
			audio_play_sound(SE_death01, 1, 0);
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
		
	case "Phase1_AttackE_C" :
	#region 대쉬이후 바디프레스 - 점프
		{
			if !instance_exists(oPlayer) break;
			state_set_sprite(finalboss2_attack4_a, 1, 6);
			
			if animation_hit_frame(8)
			{x_point = oPlayer.x;audio_play_sound(SE_dodge_01, 1, 0);}

			if animation_end()
			{
				
				image_index = 0;
				x = x_point;
				y = 224;
				state = "Phase1_AttackD_B";
				image_speed = 0;
			}
		}
	#endregion
		break;

		
	case "Phase1_AttackF" :
	#region 레이저 설치
		{
			if !instance_exists(oPlayer) break;
			state_set_sprite(finalboss2_cast, 1, 0);
			if animation_hit_frame(1)
			{
				if oPlayer.x > x {image_xscale = 1;}
				if oPlayer.x < x {image_xscale = -1;}
				audio_play_sound(SE_dialog_m02, 1, 0);
			}
			
			if animation_hit_frame(7)
			{
				instance_create_layer(oPlayer.x, y, "Instances", ofilnalboss_casting_21);
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
		}
	
	#endregion
		break;
	
	#endregion
	
	
		
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
		state_set_sprite(finalboss_deadly2, 1,0)
		if global.language == "Korean"
		{var text_line_num = 24;}
		if global.language == "English"
		{var text_line_num = 52;}
		
		if global.Deathcount_total == 0	&& dia_switch == false	&& global.last_dialog == 9
		{
			diatext = scr_name[text_line_num];
			alarm[2] = 90;dia_switch = true;	
			audio_play_sound(SE_dialog_m02, 1, 0);
		}
		if global.Deathcount_total > 0	&& dia_switch == false	&& global.last_dialog == 9
		{
			diatext = scr_name[text_line_num + 1];	
			alarm[2] = 90;dia_switch = true;	
			audio_play_sound(SE_dialog_m02, 1, 0);
		}
		
		if global.last_dialog == 10	&& dia_switch == false
		{diatext = scr_name[text_line_num + 2];		alarm[2] = 100;dia_switch = true;	audio_play_sound(SE_dialog_m02, 1, 0);}
		
		if global.last_dialog == 11	&& dia_switch == false
		{diatext = scr_name[text_line_num + 3];		alarm[2] = 100;dia_switch = true;	audio_play_sound(SE_dialog_m02, 1, 0);}
		
		if global.last_dialog == 12	&& dia_switch == false
		{diatext = scr_name[text_line_num + 4];		alarm[2] = 100;dia_switch = true;	audio_play_sound(SE_dialog_m02, 1, 0);}
		
		if global.last_dialog == 13	&& dia_switch == false
		{fade_toroom(Savecenter_end, 15, c_white); global.room_direction = 50;}
		
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

if global.language == "Korean"
{var text_line_num = 19;}
if global.language == "English"
{var text_line_num = 47;}
if HP< pattern_HP3	&& global.last_dialog == 0	&& dia_switch == false
{diatext = scr_name[text_line_num];	alarm[2] = 80;dia_switch = true;	audio_play_sound(SE_dialog_m02, 1, 0);}
if global.last_dialog == 1	&& dia_switch == false
{diatext = scr_name[text_line_num + 1];	alarm[2] = 80;dia_switch = true;	audio_play_sound(SE_dialog_m02, 1, 0);}
if global.last_dialog == 2	&& dia_switch == false
{diatext = scr_name[text_line_num + 2];	alarm[2] = 80;dia_switch = true;	audio_play_sound(SE_dialog_m02, 1, 0);}
if global.last_dialog == 7	&& dia_switch == false
{diatext = scr_name[text_line_num + 3];	alarm[2] = 80;dia_switch = true;	audio_play_sound(SE_dialog_m02, 1, 0);}
if global.last_dialog == 8	&& dia_switch == false
{diatext = scr_name[text_line_num + 4];	alarm[2] = 100;dia_switch = true;	audio_play_sound(SE_dialog_m02, 1, 0);}
