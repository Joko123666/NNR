// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Use_item()
{
	
	#region using_item
	
	if global.Player_item == "Bushberry"	//덤불딸기 사용 
	{
		state_set_sprite(player_item_eat, 1, 0);
		act_switch = false;
		if animation_hit_frame(6)
		{HP += 10; global.Player_item = "empty";audio_play_sound(SE_heal, 1, false);}
		if global.subquest[1] == 2
		{global.subquest[1] = 1;}
	}
	
	if global.Player_item == "Healherb"	//약초 사용
	{
		if global.mainstream < 10
		{state_set_sprite(player_tutorial_itemuse, 1, 0);}
		if global.mainstream >= 10
		{state_set_sprite(player_item_eat, 1, 0);}
		
		act_switch = false;
		if animation_hit_frame(6)
		{
			maxHP += 10; HP += 60; global.Player_item = "empty";audio_play_sound(SE_heal, 1, false);
			var text = instance_create_depth(x - 54, y - 64, 0, text_drawingob);
			text.text = "체력이 회복,증가했다!!";
			itemkey_input_check = true;
		}

	}
	
	if global.Player_item == "Questmail"	//퀘스트용 편지 사용
	{
		state_set_sprite(player_item_read, 1, 0);
		if act_switch == true
		{
			audio_play_sound(SE_read01, 1, false);
			var text = instance_create_layer(0,0, "Effects", UI_text_drawingob);
			text.text = "부끄러운 고백편지를 읽어버렸다!";
			global.Player_item = "empty";
			global.mainstream = 16;
			global.quest_selection = "B";
			global.mainquest[3] = 3;
			act_switch = false;
		}
	}
	
	if global.Player_item == "Healpotion"	//Using Healpotion
	{
		state_set_sprite(player_item_eat, 1, 0);
		act_switch = false;
		if animation_hit_frame(6)
		{HP += 70; global.Player_item = "empty";audio_play_sound(SE_heal, 1, false);}
	}
	
	if global.Player_item == "Healpotion2"	//Using Healpotion
	{
		state_set_sprite(player_item_eat, 1, 0);
		act_switch = false;
		if animation_hit_frame(6)
		{HP += 140; global.Player_item = "empty";audio_play_sound(SE_heal, 1, false);}
	}
	
	if global.Player_item == "Healthseed"	//Using Healthseed
	{
		state_set_sprite(player_item_eat, 1, 0);
		act_switch = false;
		if animation_hit_frame(6)
		{
			maxHP += 20; global.Player_item = "empty";audio_play_sound(SE_heal, 1, false);
			var text = instance_create_depth(x - 54, y - 64, 0, text_drawingob);
			text.text = "최대체력이 증가했다";
		}
	}
	
	if global.Player_item == "Bomb01"	//Throwing Bomb 01
	{
		act_switch = false;
		var text = instance_create_depth(x - 54, y - 64, 0, text_drawingob);
		text.text = "폭탄 투척!";
		audio_play_sound(SE_dodge_01, 1, false);
		
		var bomb = instance_create_depth(x + 8*image_xscale, y - 32, 0, useitem_bomb01);
		bomb.direction = 90 - 45*image_xscale;
		bomb.speed = 6;
		
		state = "Move";
		global.Player_item = "empty";
	}
	
	if global.Player_item == "Bomb02"	//Throwing Bomb 02
	{
		act_switch = false;
		var text = instance_create_depth(x - 54, y - 64, 0, text_drawingob);
		text.text = "폭탄 투척!";
		audio_play_sound(SE_dodge_01, 1, false);
		
		var bomb = instance_create_depth(x + 8*image_xscale, y - 32, 0, useitem_bomb02);
		bomb.direction = 90 - 45*image_xscale;
		bomb.speed = 6;
		
		state = "Move";
		global.Player_item = "empty";
	}
	
	if global.Player_item == "Metalsack"	// 퀘스트 아이템 - 적수정주머니
	{
		act_switch = false;
		var text = instance_create_depth(x - 54, y - 64, 0, text_drawingob);
		text.text = "주머니를 내려놓았다";
		audio_play_sound(SE_dodge_01, 1, false);
		
		var bomb = instance_create_depth(x + 12*image_xscale, y - 32, 0, Item_metalsack);
		
		state = "Move";
		global.Player_item = "empty";
	}
	
	if global.Player_item == "Superroot"	// 비장의 버섯 
	{
		state_set_sprite(player_item_eat, 1, 0);
		act_switch = false;
		if animation_hit_frame(6)
		{
			maxHP += 50; global.Player_item = "empty";audio_play_sound(SE_heal, 1, false);
			damage += 4; hspd += 0.02; maxMP += 20; MP_regen_time -= 4;
			var text = instance_create_depth(x - 54, y - 64, 0, text_drawingob);
			text.text = "모든 능력이 증가했다!";
		}
	}
	
	if global.Player_item == "Teleportgem"	// 전송석
	{
		state_set_sprite(player_item_use, 1, 0);
		act_switch = false;
		if animation_hit_frame(1)
		{
			var text = instance_create_depth(x - 54, y - 64, 0, text_drawingob);
			text.text = "전송석을 사용했다!";
			audio_play_sound(SE_system01, 1, false);
		}
		if animation_hit_frame(11)
		{
			global.Player_item = "empty";
			fade_toroom(Village_start, 15, c_dkgray);
			global.effect_fadeout = true;
			global.room_direction = 99;
			
		}
	}
	
	
	if animation_end()
	{state = "Move";}
	
	if act_switch == true && global.Player_item == "empty"
	{state = "Move";}
	
	#endregion
	
}