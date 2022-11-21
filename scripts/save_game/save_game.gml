// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function save_game(){

	oPlayer.HP = oPlayer.maxHP;
	oPlayer.MP = oPlayer.maxMP;
	
	#region SAVE GAME
	var _saveData = array_create(0);
	
	with (oPlayer)
	{
		var _saveEntity = 
		{
			#region Player status
			obj : object_get_name(object_index),
			y : y,
			x : x,
			image_index : image_index,
			image_blend : image_blend,
			HP : HP,
			MP : MP,
			maxHP : maxHP,
			maxMP : maxMP,
			Exp : Exp,
			maxExp : maxExp,
			level : level,
			STR : STR,
			damage : damage,
			weapon : weapon,
			maxattack : maxattack,
			attackskill_set : attackskill_set,
			attackskill_cool : attackskill_cool,
			attackskill_coolset : attackskill_coolset,
			hspd : hspd,
			vsp : vsp,
			grv : grv,
			SPD : SPD,
			maxjumpcount : maxjumpcount,
			jumppower : jumppower,
			rollspd : rollspd,
			knockback : knockback,
			knockback_power : knockback_power,
			state : state,
			skillS_maxcool : skillS_maxcool,
			moveskill_maxcool : moveskill_maxcool,
			moveskill_set : moveskill_set,
			revive_maxcount : revive_maxcount,
			room_playeris : room_playeris,
			#endregion
			
			#region global_variables
			gamevolume : global.gamevolume,
			input_type : global.input_type,
			room_direction : 99,
			BGM_number : global.BGM_number,
			quest_stack1 : global.quest_stack[1],
			quest_stack2 : global.quest_stack[2],
			quest_stack3 : global.quest_stack[3],
			quest_stack4 : global.quest_stack[4],
			
			Player_item : global.Player_item,
			root_item01 : global.root_item[1],
			root_item02 : global.root_item[2],
			root_item03 : global.root_item[3],
			root_item04 : global.root_item[4],
			root_item05 : global.root_item[5],
			root_item06 : global.root_item[6],
			root_item07 : global.root_item[7],
			
			guildcard : global.guildcard,
			greenorb : global.greenorb,
			redorb : global.redorb,
			blueorb : global.blueorb,
			gold : global.gold,
			Deathcount_total : global.Deathcount_total,
			
			Player_moveskill : global.Player_moveskill,
			Player_sword : global.Player_sword,
			Player_attack3 : global.Player_attack3,
			Player_equip01 : global.Playerequip01,
			Player_equip02 : global.Playerequip02,
			Player_equip03 : global.Playerequip03,
			
			moveskill01 : global.moveskill01,
			moveskill02 : global.moveskill02,
			moveskill03 : global.moveskill03,
			moveskill04 : global.moveskill04,
			moveskill05 : global.moveskill05,
			moveskill06 : global.moveskill06,
			attackskill01 : global.attackskill01,
			attackskill02 : global.attackskill02,
			attackskill03 : global.attackskill03,
			attackskill04 : global.attackskill04,
			attackskill05 : global.attackskill05,
			attackskill06 : global.attackskill06,
			
			chest_number1 : global.chest_number[1],
			chest_number2 : global.chest_number[2],
			chest_number3 : global.chest_number[3],
			chest_number4 : global.chest_number[4],
			chest_number5 : global.chest_number[5],
			chest_number6 : global.chest_number[6],
			chest_number7 : global.chest_number[7],
			chest_number8 : global.chest_number[8],
			
			store_item_stock01 : global.store_item_stock01,
			store_item_stock02 : global.store_item_stock02,
			store_item_stock03 : global.store_item_stock03,
			store_item_stock04 : global.store_item_stock04,
			
			mainstream : global.mainstream,
			mainquest1 : global.mainquest[1],
			mainquest2 : global.mainquest[2],
			mainquest3 : global.mainquest[3],
			mainquest4 : global.mainquest[4],
			mainquest5 : global.mainquest[5],
			mainquest6 : global.mainquest[6],
			mainquest7 : global.mainquest[7],
			mainquest8 : global.mainquest[8],
			mainquest9 : global.mainquest[9],
			mainquest10 : global.mainquest[10],
			mainquest11 : global.mainquest[11],
			mainquest12 : global.mainquest[12],
			mainquest13 : global.mainquest[13],
			mainquest14 : global.mainquest[14],
			mainquest15 : global.mainquest[15],
			mainquest16 : global.mainquest[16],
			mainquest17 : global.mainquest[17],
			mainquest20 : global.mainquest[20],
			subquest1 : global.subquest[1],
			subquest2 : global.subquest[2],
			subquest3 : global.subquest[3],
			subquest4 : global.subquest[4],
			subquest5 : global.subquest[5],
			
			NPC_shopper01_dialog : global.NPC_shopper01_dialog,
			NPC_shopper02_dialog : global.NPC_shopper02_dialog,
			NPC_shopper03_dialog : global.NPC_shopper03_dialog,
			NPC2_dialog : global.NPC2_dialog,
			NPC4_dialog : global.NPC4_dialog,
			NPC7_dialog : global.NPC7_dialog,
			NPC8_dialog : global.NPC8_dialog,
			NPC09_dialog : global.NPC09_dialog,
			NPC10_dialog : global.NPC10_dialog,
			NPC15_dialog : global.NPC15_dialog,
			NPC16_dialog : global.NPC16_dialog,
			NPC17_dialog : global.NPC17_dialog,
			NPC18_dialog : global.NPC18_dialog,
			NPC19_dialog : global.NPC19_dialog,
			NPC20_dialog : global.NPC20_dialog,
			NPC21_dialog : global.NPC21_dialog,
			NPC24_dialog : global.NPC24_dialog,
			NPC23_dialog : global.NPC23_dialog,
			NPC28_dialog : global.NPC28_dialog,
			NPC29_dialog : global.NPC29_dialog,
			NPC30_dialog : global.NPC30_dialog,
			NPC31_dialog : global.NPC31_dialog,
			NPC43_dialog : global.NPC43_dialog,
			NPC44_dialog : global.NPC44_dialog,
			NPC45_dialog : global.NPC45_dialog,
			NPC46_dialog : global.NPC46_dialog,
			NPC48_dialog : global.NPC48_dialog,
			NPC50_dialog : global.NPC50_dialog,
			NPC51_dialog : global.NPC51_dialog,
			NPC99_dialog : global.NPC99_dialog,
			
			NPC8_status : global.NPC8_status,
			
			yabawi_token : global.yabawi_token,
			end_sleep : global.end_sleep,
			
			#endregion
			
		}
		array_push(_saveData, _saveEntity);
	}

	// turn data to JSON string and save it
	var _string = json_stringify(_saveData);
	var _buffer = buffer_create(string_byte_length(_string) + 1 , buffer_fixed, 1);
	buffer_write(_buffer, buffer_string, _string);
	buffer_save(_buffer, "savedgame.save");
	buffer_delete(_buffer);
	
	show_debug_message("Game Saved!" + _string);
	#endregion
	
	state_set_sprite(Save_obelisk_active, 1, 0);
	
	state = "active";
	
	audio_play_sound(SE_system07, 1, false);
	var text = instance_create_layer(x, y-62, "Effects", text_drawingob);
	text.text = "게임 저장 완료!";
}