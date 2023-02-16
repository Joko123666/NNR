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
			if global.language == "Korean"
			{text.text = "체력이 회복, 증가했다!!";}
			if global.language == "English"
			{text.text = "HP, maxHP increased!";}
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
			if global.language == "Korean"
			{text.text = "부끄러운 고백편지를 읽어버렸다!";}
			if global.language == "English"
			{text.text = "I read the embarrassing love letter!";}
			global.Player_item = "empty";
			global.mainstream = 16;
			global.quest_selection = "B";
			global.mainquest[3] = 3;
			
			var text = instance_create_layer(x, y-62, "Effects", text_drawingob_book);
			text.text_line01 = book_text_80(1);
			text.text_line02 = book_text_80(2);
			text.text_line03 = book_text_80(3);
			text.text_line04 = book_text_80(4);
			text.text_line05 = book_text_80(5);
			text.text_line06 = book_text_80(6);
			
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
			if global.language == "Korean"
			{text.text = "최대체력이 증가했다";}
			if global.language == "English"
			{text.text = "Max HP increased";}
		}
	}
	
	if global.Player_item == "Firework"	//폭죽 
	{
		act_switch = false;
		var text = instance_create_depth(x - 54, y - 64, 0, text_drawingob);
		if global.language == "Korean"
		{text.text = "발사!";}
		if global.language == "English"
		{text.text = "Fire!";}
		audio_play_sound(SE_dodge_01, 1, false);
		
		instance_create_depth(x + 8*image_xscale, y - 32, 0, useitem_firework);
		
		state = "Move";
		global.Player_item = "empty";
	}
	
	if global.Player_item == "Bomb01"	//Throwing Bomb 01
	{
		act_switch = false;
		var text = instance_create_depth(x - 54, y - 64, 0, text_drawingob);
		if global.language == "Korean"
		{text.text = "폭탄 투척!";}
		if global.language == "English"
		{text.text = "planting bomb";}
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
		if global.language == "Korean"
		{text.text = "폭탄 투척!";}
		if global.language == "English"
		{text.text = "planting bomb";}
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
		if global.language == "Korean"
		{text.text = "주머니를 내려놓았다";}
		if global.language == "English"
		{text.text = "i droped sack";}
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
			if global.language == "Korean"
			{text.text = "모든 능력이 증가했다!";}
			if global.language == "English"
			{text.text = "All status increased!";}
		}
	}
	
	if global.Player_item == "Teleportgem"	// 전송석
	{
		state_set_sprite(player_item_use, 1, 0);
		act_switch = false;
		if animation_hit_frame(1)
		{
			var text = instance_create_depth(x - 54, y - 64, 0, text_drawingob);
			if global.language == "Korean"
			{text.text = "전송석을 사용했다";}
			if global.language == "English"
			{text.text = "teleport stone used";}
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
	
	if global.Player_item == "Teardrop"	// 허수아비드롭 눈물 
	{
		act_switch = false;
		var text = instance_create_depth(x - 54, y - 64, 0, text_drawingob);
		if global.language == "Korean"
		{text.text = "허수아비의 희생을 잊지 않는다...";}
		if global.language == "English"
		{text.text = "Don't forget the scarecrow's sacrifice...";}
		audio_play_sound(SE_system01, 1, false);
		oPlayer.MP_regen_time -= 4;
		
		state = "Move";
		global.Player_item = "empty";
	}
	
	
	if animation_end()
	{state = "Move";}
	
	if act_switch == true && global.Player_item == "empty"
	{state = "Move";}
	
	#endregion
	
}