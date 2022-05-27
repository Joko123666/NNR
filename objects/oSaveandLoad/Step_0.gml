

//Key press "S"
#region Save
if keyboard_check_pressed(ord("P"))
{
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
			STR : STR,
			damage : damage,
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
			revive_maxcount : revive_maxcount,
			room_playeris : room_playeris,
			#endregion
			
			#region global_variables
			room_direction : global.room_direction,
			BGM_number : global.BGM_number,
			quest_stack1 : global.quest_stack[1],
			quest_stack2 : global.quest_stack[2],
			quest_stack3 : global.quest_stack[3],
			quest_stack4 : global.quest_stack[4],
			Player_item : global.Player_item,
			gold : global.gold,
			Player_moveskill : global.Player_moveskill,
			Player_sword : global.Player_sword,
			Player_attack3 : global.Player_attack3,
			chest_number1 : global.chest_number[1],
			chest_number2 : global.chest_number[2],
			chest_number3 : global.chest_number[3],
			chest_number4 : global.chest_number[4],
			chest_number5 : global.chest_number[5],
			chest_number6 : global.chest_number[6],
			chest_number7 : global.chest_number[7],
			chest_number8 : global.chest_number[8],
			
			mainstream : global.mainstream,
			mainquest1 : global.mainquest[1],
			mainquest2 : global.mainquest[2],
			mainquest3 : global.mainquest[3],
			mainquest4 : global.mainquest[4],
			mainquest5 : global.mainquest[5],
			mainquest6 : global.mainquest[6],
			subquest1 : global.subquest[1],
			subquest2 : global.subquest[2],
			subquest3 : global.subquest[3],
			subquest4 : global.subquest[4],
			subquest5 : global.subquest[5],
			
			NPC_shopper01_dialog : global.NPC_shopper01_dialog,
			NPC2_dialog : global.NPC2_dialog,
			NPC4_dialog : global.NPC4_dialog,
			NPC7_dialog : global.NPC7_dialog,
			NPC8_dialog : global.NPC8_dialog,
			NPC10_dialog : global.NPC10_dialog,
			NPC8_status : global.NPC8_status,
			
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
	
}
#endregion

 #region Load
if keyboard_check_pressed(ord("L"))
{
	with (oPlayer) instance_destroy();
	
	if (file_exists("savedgame.save"))
	{
		var _buffer = buffer_load("savedgame.save");
		var _string = buffer_read(_buffer, buffer_string);
		buffer_delete(_buffer);
		
		var _loadData = json_parse(_string);
		
		while (array_length(_loadData) > 0)
		{
			var _loadEntity = array_pop(_loadData);
			with (instance_create_layer(0, 0, "player_layer", asset_get_index(_loadEntity.obj)))
			{
				room = _loadEntity.room_playeris;
				
				#region Player status
				
					x = _loadEntity.x;
					y = _loadEntity.y;
					image_blend = _loadEntity.image_blend;
					image_index = _loadEntity.image_index;
					maxHP = _loadEntity.maxHP;
					maxMP = _loadEntity.maxMP;
					STR = _loadEntity.STR;
					damage = _loadEntity.damage;
					attackskill_cool = _loadEntity.attackskill_cool;
					attackskill_coolset = _loadEntity.attackskill_coolset;
					hspd = _loadEntity.hspd;
					vsp = _loadEntity.vsp;
					grv = _loadEntity.grv;
					SPD = _loadEntity.SPD;
					maxjumpcount = _loadEntity.maxjumpcount;
					jumppower = _loadEntity.jumppower;
					rollspd = _loadEntity.rollspd;
					knockback = _loadEntity.knockback;
					knockback_power = _loadEntity.knockback_power;
					state = _loadEntity.state;
					skillS_maxcool = _loadEntity.skillS_maxcool;
					moveskill_maxcool = _loadEntity.moveskill_maxcool;
					revive_maxcount = _loadEntity.revive_maxcount;
				
					#endregion
				
					#region global_variables
					global.room_direction =  _loadEntity.room_direction;
					global.BGM_number = _loadEntity.BGM_number;
					global.quest_stack[1] =  _loadEntity.quest_stack1;
					global.quest_stack[2] =  _loadEntity.quest_stack2;
					global.quest_stack[3] =  _loadEntity.quest_stack3;
					global.quest_stack[4] =  _loadEntity.quest_stack4;
					global.Player_item = _loadEntity.Player_item;
					global.root_item[1] = _loadEntity.root_item01;
					global.root_item[2] = _loadEntity.root_item02;
					global.root_item[3] = _loadEntity.root_item03;
					global.root_item[4] = _loadEntity.root_item04;
					global.root_item[5] = _loadEntity.root_item05;
					global.root_item[6] = _loadEntity.root_item06;
					global.root_item[7] = _loadEntity.root_item07;
					global.guildcard = _loadEntity.guildcard;
					global.greenorb = _loadEntity.greenorb;
					global.gold = _loadEntity.gold;
					global.Player_moveskill = _loadEntity.Player_moveskill;
					global.Player_sword = _loadEntity.Player_sword;
					global.Player_attack3 = _loadEntity.Player_attack3;
					global.chest_number[1] = _loadEntity.chest_number1;
					global.chest_number[2] = _loadEntity.chest_number2;
					global.chest_number[3] = _loadEntity.chest_number3;
					global.chest_number[4] = _loadEntity.chest_number4;
					global.chest_number[5] = _loadEntity.chest_number5;
					global.chest_number[6] = _loadEntity.chest_number6;
					global.chest_number[7] = _loadEntity.chest_number7;
					global.chest_number[8] = _loadEntity.chest_number8;
			
					global.mainstream = _loadEntity.mainstream;
					global.mainquest[1] = _loadEntity.mainquest1;
					global.mainquest[2] = _loadEntity.mainquest2;
					global.mainquest[3] = _loadEntity.mainquest3;
					global.mainquest[4] = _loadEntity.mainquest4;
					global.mainquest[5] = _loadEntity.mainquest5;
					global.mainquest[6] = _loadEntity.mainquest6;
					global.subquest[1] = _loadEntity.subquest1;
					global.subquest[2] = _loadEntity.subquest2;
					global.subquest[3] = _loadEntity.subquest3;
					global.subquest[4] = _loadEntity.subquest4;
					global.subquest[5] = _loadEntity.subquest5;
			
					global.NPC_shopper01_dialog =_loadEntity.NPC_shopper01_dialog;
					global.NPC2_dialog = _loadEntity.NPC2_dialog;
					global.NPC4_dialog =_loadEntity. NPC4_dialog;
					global.NPC7_dialog = _loadEntity.NPC7_dialog;
					global.NPC8_dialog = _loadEntity.NPC8_dialog;
					global.NPC10_dialog = _loadEntity.NPC10_dialog;
					global.NPC8_status = _loadEntity.NPC8_status;
			
					#endregion
			}
			show_debug_message("Game Loaded!" + _string);
		}
		
	}
	
	
}
#endregion