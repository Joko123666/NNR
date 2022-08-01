if room == "Title"	{state = "Stay"; exit;}
if instance_exists(Title_controll) {exit;}
//state_update
#region State_update

rollspd = hspd + 3;

//레벨업
if Exp >= maxExp
{
	Exp -= maxExp;
	maxExp = floor(maxExp * 1.4);
	level++;
	maxHP += 3;
	HP += 10;
	maxMP += 2;
	MP += 10;
	MP_regen_time -= 2;
	hspd += 0.01;
	damage += 1;
	repeat(20)
	{instance_create_layer(x, y-24, "Effects", oparticle_01)}
	instance_create_layer(x, y-28, "Effects", oeffect_up01);
	audio_play_sound(SE_levelup, 1, false);
}

	if invincibility_count > 0			//무적 상태
	{
		invincibility_count--;
		invincibility = true;			//무적카운트 계산
		image_alpha = 0.6;
	}
	else 
	{
		invincibility = false;			//무적 해제
		image_alpha = 1;
	}


if audio_play_switch == false
	{audio_play_count--; if audio_play_count < 0 {audio_play_switch = true;}}
//최대체력, 마력 설정
if HP > maxHP
	{HP = maxHP;}
if MP > maxMP
	{MP = maxMP;}
	
//isshadow
if instance_exists(oplayer_shadow)
{isshadow = true;}
if !instance_exists(oplayer_shadow)
{isshadow = false;}

//각종 재사용 대기시간
skillS_cool = count_decrease(skillS_cool, 1, 0);
moveskill_cool = count_decrease(moveskill_cool, 1, 0);
ladder_term = count_decrease(ladder_term, 1, 0);
attackskill_cool = count_decrease(attackskill_cool, 1, 0);
if global.Player_sword == true
	{attackskill_cost = 20;}
act_count = count_decrease(act_count, 1, 0);
	
//벽에 스스로 밀림

room_playeris = room;

//인스턴트 충격파 설정
if ismoving == true	&& moving_speed > 0
{
	if moving_direction == 0	{move_and_collide(moving_speed, 0);}
	if moving_direction == 180	{move_and_collide(-moving_speed, 0);}
	moving_speed -= 0.2;
	if moving_speed <=0 {ismoving = false;}
}

#endregion

switch (state)
{
	case "Stay" :
	#region Stay
	if global.mainstream < 10
	{state_set_sprite(player_tutorial_stand, 1, 0);}
	if global.mainstream >= 10
	{state_set_sprite(player_stand, 1, 0);}
	
	
	vsp = vsp + grv;				//중력 계산
	if (place_meeting(x,y+vsp,oWall))	//공중에 떠있을 경우
	{
		while (!place_meeting(x,y+sign(vsp),oWall))
		{	y = y + sign(vsp);	}
		vsp = 0;
	}
	
	y = y + vsp;
	#endregion
	break
	
	case "Move" :
		#region Move_state
		oCamera.camera_ymovement_point = 0;
		mask_index = player_mask;
		alarm[0] = 0;
		act_switch = false;
		
		if input.right					//이동 우측
		{
			move_and_collide(hspd, 0);
			image_xscale = 1;
			if global.mainstream < 10
			{sprite_index = player_tutorial_move;}
			if global.mainstream >= 10
			{sprite_index = player_move;}
			image_speed = 1;
			oCamera.camera_xmovement_point = 20;
		}	
	
		if input.left					//이동 좌측
		{
			move_and_collide(-hspd, 0);
			image_xscale = -1;
			if global.mainstream < 10
			{sprite_index = player_tutorial_move;}
			if global.mainstream >= 10
			{sprite_index = player_move;}
			image_speed = 1;
			oCamera.camera_xmovement_point = -20;
		}

		if !input.right && !input.left	//이동 중립
		{
			if global.mainstream < 10
			{sprite_index = player_tutorial_stand;}
			if global.mainstream >= 10
			{sprite_index = player_stand;}
			image_speed = 1;
		}
		
		if input.down && place_meeting(x,y+4,oWall)	
		{
			state = "Crawl";
		}
		
		if input.moveskill					//회피기 입력
		{
			if moveskill_cool <= 0
			{
				state = "Moveskill";
			}
			if moveskill_cool > 0
			{
				screen_shake(8, 2);
				notready_text = true;
				alarm[2] = 12;
			}
		}
		
		if input.baseattack && place_meeting(x,y+4,oWall)				//공격A 입력
		{
			image_index = 0;
			state = "Attack1";
		}
		
		if input.attackskill				//공격S 입력
		{
			if skillS_cool > 0 
			{
				screen_shake(8, 2);
				notready_text = true;
				alarm[2] = 12;
			}
			
			if skillS_cool <=0 && MP >= attackskill_cost
			{
				image_index = 0;
				state = "Attackskill1";
				actingcount = 5;
				delaycount = 20;
				repeatcount = 5;
				skillS_cool = skillS_maxcool;
				act_switch = true;
			}
			if MP < attackskill_cost
			{
				screen_shake(8, 2);
				notenough_text = true;
				alarm[1] = 12;
			}

		}
		
		#region Jump					// 점프 입력
		
		// jump
		vsp = vsp + grv;				//중력 계산

		if (place_meeting(x,y+1,oWall))	&& sign(vsp) > 0	//바닥에 닿았을 경우
		{
			jumpcount = maxjumpcount;	
			isground = true;
		}

		if ((input.jump) && (jumpcount > 0))	//점프 가능 계산
		{
			vsp = -jumppower;
			jumpcount -= 1;
			audio_play_sound(SE_jump01, 10, false);
			isground = false;
		}
		
			//Veltical Collosion
		if (place_meeting(x,y+vsp,oWall))
		{
			while (!place_meeting(x,y+sign(vsp),oWall))
			{
				y = y + sign(vsp);	
				
			}
			vsp = 0;
		}
		
		y = y + vsp;

	
		//Jump animation
		if (!place_meeting(x,y+1,oWall))	//공중에 떠있을 경우 
	{
		if global.mainstream < 10
		{sprite_index = player_tutorial_jump;}
		if global.mainstream >= 10
		{sprite_index = player_jump;}
		
		image_speed = 0;
		isground = false;
		if (sign(vsp) > 0) image_index = 1; else image_index = 0; 	//상승, 하강 상태 결정
		
		if input.baseattack { state = "JumpAttack";}
	}
	
		#endregion
		
		if input.item && global.Player_item != "empty"		//아이템 사용
		{
			image_index = 0;
			state = "Useitem"
			act_switch = true;
		}
		
		
		#endregion
	break;
	
	case "Crawl" :
	#region
		if global.mainstream < 10
		{state_set_sprite(player_tutorial_crawl, 1, 0);}
		if global.mainstream >= 10
		{state_set_sprite(player_crawl, 1, 0);}
		
		if crawl_cameramove_count > 0				//카메라 이동 카운트
		{crawl_cameramove_count--;}
		else
		{oCamera.camera_ymovement_point = 70; oCamera.camera_yspeed = 8;}
		mask_index = player_crawlmask;
	
		//knockback Veltical Collosion
			vsp = vsp + grv;
			if (place_meeting(x,y+vsp,oWall))
			{
				while (!place_meeting(x,y+sign(vsp),oWall))
				{
					y = y + sign(vsp);
				}
				vsp = 0;
			}
		
			y = y + vsp;

	
		if !input.down or !place_meeting(x,y+4,oWall)	
		{
			crawl_cameramove_count = crawl_cameramove_count_defalt;
			state = "Move";
		}
		if input.baseattack				//공격A 입력
		{
			image_index = 0;
			state = "Attack1";
		}
		
	#endregion
	break;
	
	case "Moveskill" :
		#region 
		
		if moveskill_set == 1 && act_switch == false
		{
			act_switch = true;
			moving_speed = hspd * 2 + 3;
		}
		// 긴급회피
		if moveskill_set == 1
		{
			if global.mainstream < 10
			{state_set_sprite(player_tutorial_moveskill, 1, 0);}
			if global.mainstream >= 10
			{state_set_sprite(player_moveskill1, 1, 0);}
			
			if animation_hit_frame(1)
			{audio_play_sound(SE_moveskill1, 20, false);}
			invincibility = true;
			image_alpha = 0.6;
			move_and_collide(moving_speed * image_xscale, 0);
			if moving_speed > 0 
			{
				moving_speed -= 0.3;
			}
			if animation_hit_frame(7)
			{moving_speed = 0;}
			
			if animation_end()	&& global.mainstream < 10
			{moveskillkey_input_check = true;}
			
			#region gravity
			vsp = vsp + grv;
			if (place_meeting(x,y+vsp,oWall))
				{
					while (!place_meeting(x,y+sign(vsp),oWall))
					{
						y = y + sign(vsp);
				
					}
					vsp = 0;
				}
		
			y = y + vsp;
			#endregion
			
		}
		//닌자대쉬
		if moveskill_set == 2 
		{
			state_set_sprite(player_moveskill2, 1, 0);
			
			if animation_hit_frame(1)
			{audio_play_sound(SE_moveskill, 20, false);}
			invincibility = true;
			image_alpha = 0.6;
			move_and_collide(hspd * image_xscale * 3 , 0);
		}
		//그림자 건너기
		if moveskill_set == 3
		{
			state_set_sprite(player_moveskill3, 1, 0);
			
			if isshadow == true
			{
				vsp = 0;
				audio_play_sound(SE_moveskill, 20, false);
				x = oplayer_shadow.x;
				y = oplayer_shadow.y;
				instance_destroy(oplayer_shadow);
				isshadow = false;
				moveskill_maxcool = moveskill03_cool;
				moveskill_cool = moveskill_maxcool;
				state = "Move";
			}
			
			if isshadow == false
			{
				move_and_collide(hspd * image_xscale * 2.2 , 0);
				if animation_hit_frame(0)
				{shadow_x = x;	shadow_y = y;}
				if animation_hit_frame(1)
				{
					audio_play_sound(SE_moveskill, 20, false);
					image_alpha = 0.3;
					invincibility = true;
				}
				if animation_hit_frame(7)
				{image_alpha = 1;  }
				if animation_end()
				{
					invincibility = false; isshadow = true; 
					instance_create_layer(shadow_x, shadow_y, "Effects", oplayer_shadow);
					moveskill_cool = 8;
				}
			}
			
 		}
		
		if animation_end()
		{
			if moveskill_set == 1
			{moveskill_maxcool = moveskill01_cool;}
			if moveskill_set == 2
			{moveskill_maxcool = moveskill02_cool;}
			if moveskill_set == 3
			{	if isshadow == true {moveskill_maxcool = 8;}}
			moveskill_cool = moveskill_maxcool;
			image_alpha = 1;
			invincibility = false;
			state = "Move";
		}
		
		
		#endregion
	break;
	
	case "Knockback" :
		#region Knockback_state
			
			invincibility = true;
			invincibility_count = invincibility_maxcount;
			knockback_state(player_knockback, "Move");
			
				//knockback Veltical Collosion
			vsp = vsp + grv/2;
			if (place_meeting(x,y+vsp,oWall))
			{
				while (!place_meeting(x,y+sign(vsp),oWall))
				{
					y = y + sign(vsp);
				}
				vsp = 0;
			}
		
			y = y + vsp;

		#endregion
	break;
	
	case "CrawlAttack" :
	#region Crawlattack_state
		state_set_sprite(player_crawl, 0.9 + 0.1*SPD, 0);
		
			//knockback Veltical Collosion
		vsp = vsp + grv;
		if (place_meeting(x,y+vsp,oWall))
		{
			while (!place_meeting(x,y+sign(vsp),oWall))
			{
				y = y + sign(vsp);
			}
			vsp = 0;
		}	
		y = y + vsp;
		
		
		if animation_hit_frame(3)
		{
			creat_hitbox(x+(28*image_xscale), y, self, hit_32, knockback/2 + STR, 3, damage/2 + STR, image_xscale*2)
		}
		
		if animation_end()
		{
			if input.down
			{
				state = "Crawl"
			}
			else
			{
				state = "Move"
			}
		}
		
		#endregion
	break;

	case "JumpAttack" :	
	#region Jumpattack_state
		if global.Player_sword == false
		{
			if global.mainstream < 10
			{
				state_set_sprite(player_tutorial_jumpattack, 1, 0);
				if animation_hit_frame(1)
				{audio_play_sound(SE_attack01, 20, false);}	
				if animation_hit_frame(3)
				{
					creat_hitbox(x+(22*image_xscale), y, self, hit_16, knockback/2 + STR, 2, damage/2 + STR, image_xscale*2/3)
				}
			}
			else
			{
				state_set_sprite(player_jumpattack, 1, 0);
				if animation_hit_frame(1)
				{audio_play_sound(SE_attack01, 20, false);}	
				if animation_hit_frame(3)
				{
					creat_hitbox(x+(22*image_xscale), y, self, hit_16, knockback/2 + STR, 2, damage/2 + STR, image_xscale*2/3)
				}
			}
		}
		
		if global.Player_sword == true
		{
			state_set_sprite(player_jumpattack_sword, 1, 0);
			if animation_hit_frame(1)
			{audio_play_sound(SE_attack01, 20, false);}	
			if animation_hit_frame(3)	or animation_hit_frame(4) 
			{
				creat_hitbox(x, y, self, player_jumpattack_sword_hutbox, knockback, 2, damage/2, image_xscale)
			}
		}
		
		
			//knockback Veltical Collosion
		vsp = vsp + grv;
		if (place_meeting(x,y+vsp,oWall))
		{
			while (!place_meeting(x,y+sign(vsp),oWall))
			{
				y = y + sign(vsp);
			}
			vsp = 0;
		}	
		y = y + vsp;
		
		if input.right					//이동 우측
		{
			move_and_collide(hspd/2, 0);
			image_xscale = 1;
		}	
	
		if input.left					//이동 좌측
		{
			move_and_collide(-hspd/2, 0);
			image_xscale = -1;
		}
				
		
		
		if animation_end()
		{
			{
				state = "Move"
			}
		}
		
		#endregion
	break;

	case "Attack1" :
		#region AttackA_state
		if global.Player_sword == false
		#region no sword
		{
			if global.mainstream < 10
			{state_set_sprite(player_tutorial_attack, 1, 0);}
			if global.mainstream >= 10
			{state_set_sprite(player_attack1, 1, 0);}
			
			if animation_hit_frame(1)
			{audio_play_sound(SE_attack02, 20, false);}	
				//knockback Veltical Collosion
			vsp = vsp + grv;
			if (place_meeting(x,y+vsp,oWall))
			{
				while (!place_meeting(x,y+sign(vsp),oWall))
				{
					y = y + sign(vsp);
				}
				vsp = 0;
			}	
			y = y + vsp;
		
		
			if animation_hit_frame(2)
			{
				creat_hitbox(x, y, self, player_attack1_hitbox, knockback_power, 3, damage + STR*2, image_xscale)
			}
		
			if input.baseattack && animation_hit_frame_range(6,10)
			{
				actingcount = 10;
				state = "Attack2";
			}
		
			if input.moveskill					//회피기 입력
			{
				if moveskill_cool <= 0
				{
					state = "Moveskill";
				}
			}
		
			if animation_end()
			{
				state = "Move"
			}
		}
		
		#endregion
		
		if global.Player_sword == true
		#region with sword
		{
				state_set_sprite(player_attack_sword1, 1, 0);
			if animation_hit_frame(1)
			{audio_play_sound(SE_attack_sword01, 20, false);}	
				//knockback Veltical Collosion
			vsp = vsp + grv;
			if (place_meeting(x,y+vsp,oWall))
			{
				while (!place_meeting(x,y+sign(vsp),oWall))
				{
					y = y + sign(vsp);
				}
				vsp = 0;
			}	
			y = y + vsp;
		
		
			if animation_hit_frame(3)
			{
				creat_hitbox(x, y, self, player_attack_sword1_hitbox, knockback_power, 3, damage, image_xscale)
			}
		
			if input.baseattack && animation_hit_frame_range(5,8)
			{
				actingcount = 10;
				state = "Attack2";
			}
		
			if input.moveskill					//회피기 입력
			{
				if moveskill_cool <= 0
				{
					state = "Moveskill";
				}
			}
		
			if animation_end()
			{
				state = "Move"
			}
		}
		#endregion
		
		#endregion
	break;
	
	case "Attack2" :
		#region AttackA2_state
		if global.Player_sword == false
		#region no sword
		{
				state_set_sprite(player_attack1, 1, 0);
			if animation_hit_frame(1)
			{audio_play_sound(SE_attack01, 20, false);}	
				//knockback Veltical Collosion
			vsp = vsp + grv;
			if (place_meeting(x,y+vsp,oWall))
			{
				while (!place_meeting(x,y+sign(vsp),oWall))
				{
					y = y + sign(vsp);
				}
				vsp = 0;
			}	
			y = y + vsp;
		
		
			if animation_hit_frame(2)
			{
				creat_hitbox(x, y, self, player_attack1_hitbox, knockback_power, 3, damage + STR*2, image_xscale)
			}

		
			if input.moveskill					//회피기 입력
			{
				if moveskill_cool <= 0
				{
					state = "Moveskill";
				}
			}
		
			if animation_end()
			{
				state = "Move"
			}
		}
		#endregion
		
		if global.Player_sword == true
		#region with sword
		{
				state_set_sprite(player_attack_sword2, 1, 0);
			if animation_hit_frame(1)
			{audio_play_sound(SE_attack_sword02, 20, false);}	
				//knockback Veltical Collosion
			vsp = vsp + grv;
			if (place_meeting(x,y+vsp,oWall))
			{
				while (!place_meeting(x,y+sign(vsp),oWall))
				{
					y = y + sign(vsp);
				}
				vsp = 0;
			}	
			y = y + vsp;
		
		
			if animation_hit_frame(3)
			{
				creat_hitbox(x, y, self, player_attack_sword2_hitbox, knockback_power, 3, damage*1.3, image_xscale)
			}
		
			if input.baseattack && animation_hit_frame_range(5,8)
			{
				actingcount = 10;
				state = "Attack2";
			}
		
			if input.moveskill					//회피기 입력
			{
				if moveskill_cool <= 0
				{
					state = "Moveskill";
				}
			}
		
			if animation_end()
			{
				state = "Move"
			}
		}
		#endregion
		
		#endregion
	break;

	case "Attackskill1" :
	#region AttackS_state

	if attackskill_cool <= 0
	{
		if global.Player_sword == false
		{
				if global.mainstream < 10
				{state_set_sprite(player_tutorial_attackskill, 1, 0);}
				if global.mainstream >= 10
				{state_set_sprite(player_attackskill_hand, 1, 0);}
				if animation_hit_frame(1)
				{MP -= attackskill_cost;}
				for (i=2 ; i<4 ; i++ )
				{
					if animation_hit_frame(i)
					{
						audio_play_sound(SE_attack02, 20, false);
						creat_hitbox(x, y, self, player_attackskill_hand_hitbox, knockback_power, 3, damage*2, image_xscale)
						screen_shake(2, knockback*3)
					}	
				}
			
				if animation_end()
				{state = "Move"; attackskill_cool = attackskill_coolset;attackskillkey_input_check = true;}
		}
		//검돌격 스킬
		if global.Player_sword == true  && attackskill_set == 2
		{
			state_set_sprite(player_attackskill_sword1, 1, 0);
			move_and_collide(moving_speed * image_xscale, 0);
		
			if animation_hit_frame(1)
			{audio_play_sound(SE_attack_sword02 , 20, false); moving_speed = hspd * 2; invincibility = true; MP -= attackskill_cost;}
		
				for (i=2 ; i<5 ; i++ )
				{
					if animation_hit_frame(i)
					{
						creat_hitbox_effect(x + 9, y - 13, self, player_attackskill_sword1_hitbox, knockback_power, 2, damage, image_xscale, oparticle_11);
						screen_shake_x(5 , 3)
						moving_speed = moving_speed * 0.85;
					}	
				}
			if animation_hit_frame(6) or animation_hit_frame(7)
			{moving_speed = moving_speed * 0.5; invincibility = false;}
		
		
			
			if animation_end()
				{state = "Move"; attackskill_cool = attackskill_coolset;}
		}
		//올려치기 스킬
		if global.Player_sword == true && attackskill_set == 1
		{
			state_set_sprite(player_attackskill_sword0, 1, 0);
			if animation_hit_frame(1)
			{audio_play_sound(SE_attack_sword02 , 20, false); MP -= attackskill_cost; image_speed = 2; }
			if animation_hit_frame(3)
			{
				creat_hitbox_effect(x , y , self, player_attackskill_sword0_hitbox, knockback_power * 1.5, 2, damage * 2, image_xscale, oparticle_11);
				screen_shake_x(5 , 3)
				image_speed = 1;
				vsp = -3;
			}
			if animation_end()
			{state = "Move"; attackskill_cool = attackskill_coolset;}
		}
		//검스핀 스킬
		if global.Player_sword == true  && attackskill_set == 3
		{
			state_set_sprite(player_attackskill_sword2, 1, 0);
			move_and_collide(moving_speed * image_xscale, 0);
			
			if animation_hit_frame(0)
			{moving_speed = 0;image_speed = 1.8;}
			if animation_hit_frame(6)
			{ moving_speed = hspd * 1.3; invincibility = true; MP -= attackskill_cost; image_speed = 1;}
		
				for (i=6 ; i<12 ; i++ )
				{
					if animation_hit_frame(i)
					{
						creat_hitbox_effect(x, y, self, player_attackskill_sword2_hitbox, knockback_power, 2, damage * 1.5, image_xscale, oparticle_11);
						screen_shake_x(20 , 6);
						moving_speed += hspd * 0.2;
						audio_play_sound(SE_attack_sword01 , 20, false);
					}	
				}
			if animation_hit_frame(13) or animation_hit_frame(14)
			{moving_speed = moving_speed * 0.4; invincibility = false;}
			if animation_hit_frame(15)
			{moving_speed = 0;}
		
		
			
			if animation_end()
				{state = "Move"; attackskill_cool = attackskill_coolset;}
		}
	
	}
		//gravity
		
		vsp = vsp + grv;
		if (place_meeting(x,y+vsp,oWall))
		{
			while (!place_meeting(x,y+sign(vsp),oWall))
			{
				y = y + sign(vsp);
			}
			vsp = 0;
		}	
		y = y + vsp;
		
	
	#endregion
	break;
	
	case "Useitem" :
	Use_item();
	#region Gravity
	vsp = vsp + grv/2;
		if (place_meeting(x,y+vsp,oWall))
		{
			while (!place_meeting(x,y+sign(vsp),oWall))
			{
				y = y + sign(vsp);
			}
			vsp = 0;
		}	
		y = y + vsp;
	#endregion
	break;

	case "Ladder" :
	#region Laddering
		state_set_sprite(player_ladder, 1, 0);
		ladder_term = 25;
		if input.up					//이동 위
		{
			move_and_collide(0 , -hspd);
			image_speed = 1;
			oCamera.camera_ymovement_point = -10;
		}	
	
		if input.down					//이동 아래
		{
			move_and_collide( 0 , hspd);
			image_speed = 1;
			oCamera.camera_ymovement_point = 10;
		}

		if !input.up && !input.down	//이동 중립
		{
			image_speed = 0;
		}
		
		if input.jump
		{vsp = -5 ; state = "Move";}
		
		if place_meeting(x, y + 2, oWall) && input.down
		{state = "Move"; vsp = -1;}
		
		if !place_meeting(x, y, oLadder)
		{vsp = -3 ;state = "Move";}

		
	#endregion
	break;
	
	case "Death" :
	#region Death state
		state_set_sprite(player_death_act, 1, 0);	
		
		//instance_create_depth(x, y-46, -3, ui_revive_button);
			// 사망시 넉백
		move_and_collide(death_knockback, 0);
		if death_knockback > 0  {death_knockback -= 0.3;}
		
		if input.interaction
		{revive_count--; image_index = 0; image_speed = 1;}
		if revive_count <=0			//부활
		{
			revive_maxcount += 1; 
			HP = maxHP; 
			state = "Move"; 
			invincibility = true; 
			invincibility_count = 60;
			death_knockback = 6;
			vsp = -3;
			repeat(8)
			{
				instance_create_depth(x, y-24, -1, oparticle_09);
				instance_create_depth(x, y-24, -1, oparticle_10);
			}
		}
		
		if animation_end()
		{image_speed = 0;}
		
		#region Gravity
		vsp = vsp + grv/2;
			if (place_meeting(x,y+vsp,oWall))
			{
				while (!place_meeting(x,y+sign(vsp),oWall))
				{
					y = y + sign(vsp);
				}
				vsp = 0;
			}	
			y = y + vsp;
		#endregion
		
	#endregion
	break;
}

#region mainstream_checkpoint
	
	if global.mainstream == 1 && dialog_count == 0
	{player_text_UI();}

if global.mainstream == 1	&& input.interaction	&& act_count <=0	&& dialog_endswitch == false
{
	//게임 시작 배경 독백 출력
	act_count = 18;
	var text = instance_create_layer(x, y-62, "Effects", UI_text_drawingob_delay);
	text.text = Player_self_dialog(dialog_count);
	text.dianame = "이드"
	text.name_color = c_black;	
}

	if global.mainstream == 2 && dialog_count == 0
	{player_text_UI(); dialog_endswitch = false;}
if global.mainstream == 2	&& input.interaction	&& act_count <=0	&& dialog_endswitch == false
{
	//기본조작 가이드 대사 출력
	act_count = 18;
	var text = instance_create_layer(x, y-62, "Effects", UI_text_drawingob_delay);
	text.text = Player_self_dialog(dialog_count);
	text.dianame = "이드"
	text.name_color = c_black;	
	movekey_input_check = false;
	jumpkey_input_check = false;
}

	if input.left or input.right 
	{movekey_input_check = true;}
	if input.jump 
	{jumpkey_input_check = true;}
	if movekey_input_check == true && jumpkey_input_check == true && global.mainstream == 3
	{global.mainstream = 4; dialog_endswitch = false;}
	
	if global.mainstream == 4 && dialog_count == 0
	{player_text_UI();}
if global.mainstream == 4	&& input.interaction	&& act_count <=0	&& dialog_endswitch == false
{
	//공격조작 가이드 대사 출력
	act_count = 18;
	var text = instance_create_layer(x, y-62, "Effects", UI_text_drawingob_delay);
	text.text = Player_self_dialog(dialog_count);
	text.dianame = "이드"
	text.name_color = c_black;	
	attackkey_input_check = false;
	attackskillkey_input_check = false;
}
	if input.baseattack
	{attackkey_input_check = true;}
	if attackkey_input_check == true && attackskillkey_input_check == true && global.mainstream == 5
	{global.mainstream = 6; dialog_endswitch = false;}
	
	if global.mainstream == 6 && dialog_count == 0
	{player_text_UI();}
if global.mainstream == 6	&& input.interaction	&& act_count <=0	&& dialog_endswitch == false
{
	//이동스킬, 아이템 조작 가이드 대사 출력
	act_count = 18;
	var text = instance_create_layer(x, y-62, "Effects", UI_text_drawingob_delay);
	text.text = Player_self_dialog(dialog_count);
	text.dianame = "이드"
	text.name_color = c_black;	
	itemkey_input_check = false;
	moveskillkey_input_check = false;
}


	if itemkey_input_check == true && moveskillkey_input_check == true && global.mainstream == 7
	{global.mainstream = 8; dialog_endswitch = false;}

	if global.mainstream == 8 && dialog_count == 0
	{player_text_UI();}
if global.mainstream == 8	&& input.interaction	&& act_count <=0	&& dialog_endswitch == false
{
	//훈련종료 독백 출력
	act_count = 18;
	var text = instance_create_layer(x, y-62, "Effects", UI_text_drawingob_delay);
	text.text = Player_self_dialog(dialog_count);
	text.dianame = "이드"
	text.name_color = c_black;	
	
	if dialog_count == 2
	{
		fade_toroom(Village_Playerhouse, 30, c_black)
		global.mainstream = 10;
		dialog_count = 0;
	}
}

if global.mainstream == 10	&& dialog_count == 0	&& act_count <=0	&& dialog_endswitch == false
{
	//본편 시작 대사 출력
	act_count = 18;
	var text = instance_create_layer(x, y-62, "Effects", UI_text_drawingob_delay);
	text.text = Player_self_dialog(dialog_count);
	text.dianame = "이드"
	text.name_color = c_black;	
}

if global.mainstream == 10	&& input.interaction	&& act_count <=0	&& dialog_endswitch == false
{
	//본편 시작 대사 출력
	act_count = 18;
	var text = instance_create_layer(x, y-62, "Effects", UI_text_drawingob_delay);
	text.text = Player_self_dialog(dialog_count);
	text.dianame = "이드"
	text.name_color = c_black;	
}



#endregion

if vsp >= 10 {vsp = 10;}		//수직하강속도 제한