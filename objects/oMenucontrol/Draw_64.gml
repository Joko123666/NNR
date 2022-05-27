
//Menudraw for all
if isopend == true
{
	
	
	if show_menu == true
	{
		draw_sprite(UI_halfblack, 0, -20, -20);
		draw_sprite(UI_Menu_all, 0, 0, 0);
		
		#region Selection area
				
		var x_position = 24;
		var y_position = 35;
		var y_distance = 21;
		if state == "Button1"
		{draw_sprite(UI_Menu_selection_effect, 0, x_position, y_position);}
		if state == "Button2"
		{draw_sprite(UI_Menu_selection_effect, 0, x_position, y_position + y_distance);}
		if state == "Button3"
		{draw_sprite(UI_Menu_selection_effect, 0, x_position,  y_position + y_distance*2);}
		if state == "Button4"
		{draw_sprite(UI_Menu_selection_effect, 0, x_position,  y_position + y_distance*3);}
		if state == "Button5"
		{draw_sprite(UI_Menu_selection_effect, 0, x_position,  y_position + y_distance*4);}
		if state == "Button6"
		{draw_sprite(UI_Menu_selection_effect, 0, x_position,  y_position + y_distance*5);}
		
		//스킬선택 창 커서이동
			//스킬창 전체커서
		var x_position = 100;
		var y_position = 91;
		if state == "Mskillset"
		{draw_sprite(UI_Menu_skillmenu, 0, x_position,  y_position);}
		var y_position = 125;
		if state == "Askillset"
		{draw_sprite(UI_Menu_skillmenu, 0, x_position,  y_position );}
			//스킬창 선택(이동, 공격) 커서
		var x_position = 104;
		var y_position = 101;
		var x_distance = 10;
		var y_distance = 11;
		if skillset_state == "Mskillset_1"
		{draw_sprite(UI_Menu_skillselection, 0, x_position,  y_position);}
		if skillset_state == "Mskillset_2"
		{draw_sprite(UI_Menu_skillselection, 0, x_position + x_distance,  y_position);}
		if skillset_state == "Mskillset_3"
		{draw_sprite(UI_Menu_skillselection, 0, x_position + x_distance*2,  y_position);}
		if skillset_state == "Mskillset_4"
		{draw_sprite(UI_Menu_skillselection, 0, x_position,  y_position + y_distance);}
		if skillset_state == "Mskillset_5"
		{draw_sprite(UI_Menu_skillselection, 0, x_position + x_distance,  y_position + y_distance);}
		if skillset_state == "Mskillset_6"
		{draw_sprite(UI_Menu_skillselection, 0, x_position + x_distance*2,  y_position + y_distance);}
		
		//스킬 적용상태 커서, 스킬스프라이트
		if oPlayer.moveskill_set == 1
		{draw_sprite(UI_Menu_skillselection_confirm, 0, x_position,  y_position); draw_sprite(UI_skillcool_sp1, 0, 134, 96);}
		if oPlayer.moveskill_set == 2
		{draw_sprite(UI_Menu_skillselection_confirm, 0, x_position + x_distance,  y_position); draw_sprite(UI_skillcool_sp2, 0, 134, 96);}
		if oPlayer.moveskill_set == 3
		{draw_sprite(UI_Menu_skillselection_confirm, 0, x_position + x_distance*2,  y_position); draw_sprite(UI_skillcool_sp3, 0, 134, 96);}
		if oPlayer.moveskill_set == 4		//여기부터 밑으로 스프라이트 할당 안됨
		{draw_sprite(UI_Menu_skillselection_confirm, 0, x_position ,  y_position + y_distance); draw_sprite(UI_skillcool_sp4, 0, 134, 96);}
		if oPlayer.moveskill_set == 5
		{draw_sprite(UI_Menu_skillselection_confirm, 0, x_position + x_distance,  y_position + y_distance); draw_sprite(UI_skillcool_sp5, 0, 134, 96);}
		if oPlayer.moveskill_set == 6
		{draw_sprite(UI_Menu_skillselection_confirm, 0, x_position + x_distance*2,  y_position + y_distance); draw_sprite(UI_skillcool_sp6, 0, 134, 96);}
	
		#endregion
	
		#region root items	//사용안함

		var x_point = 174;
		var y_pont = 96;
		var x_distance = 36;
		var y_distance = 15;
		if global.root_item[1] > 0
		{draw_sprite(loot_goblinear, 0, x_point, y_pont); draw_text(x_point + 8,y_pont - 8, global.root_item[1]);}
		if global.root_item[2] > 0
		{draw_sprite(loot_goblinacc, 0, x_point, y_pont + y_distance); draw_text(x_point + 8,y_pont + y_distance - 8, global.root_item[2]);}
		if global.root_item[3] > 0
		{draw_sprite(loot_orctusk, 0, x_point, y_pont + y_distance*2); draw_text(x_point + 8 ,y_pont + y_distance*2 -8, global.root_item[3]);}
		if global.root_item[4] > 0
		{draw_sprite(loot_redrock, 0, x_point, y_pont + y_distance*3); draw_text(x_point + 8,y_pont + y_distance*3 - 8, global.root_item[4]);}
		
		if global.root_item[5] > 0
		{draw_sprite(loot_redrock2, 0, x_point + x_distance, y_pont); draw_text(x_point + 8 + x_distance,y_pont - 8, global.root_item[5]);}
		if global.root_item[6] > 0
		{draw_sprite(loot_redrock3, 0, x_point + x_distance, y_pont + y_distance); draw_text(x_point + 8 + x_distance,y_pont + y_distance - 8, global.root_item[6]);}
		if global.root_item[7] > 0
		{draw_sprite(loot_redrock4, 0, x_point + x_distance, y_pont + y_distance*2); draw_text(x_point + 8 + x_distance,y_pont + y_distance*2 -8, global.root_item[7]);}
		if global.root_item[8] > 0
		{draw_sprite(loot_batwing, 0, x_point + x_distance, y_pont + y_distance*3); draw_text(x_point + 8 + x_distance,y_pont + y_distance*3 - 8, global.root_item[8]);}
		
		#endregion
	
		#region key item
	
		if global.guildcard == 1
		{draw_sprite(item_guildcard, 0, 268, 49);}
		
		if global.greenorb == true
		{draw_sprite(item_orb_green, 0, 268, 30);}
		
		if global.redorb == true
		{draw_sprite(item_orb_red, 0, 250, 64);}
		
		if global.blueorb == true
		{draw_sprite(item_orb_blue, 0, 286, 64);}
	
		#endregion
	
		#region Player equipitem
		var item_center = 9;
		
		if global.Playerequip01 == "Speed01"
		{draw_sprite(equipitem_necklace01, 0, 277 + item_center, 92 + item_center);}
		if global.Playerequip01 == "Speed02"
		{draw_sprite(equipitem_necklace02, 0, 277 + item_center, 92 + item_center);}
	
		if global.Playerequip02 == "Power01"
		{draw_sprite(equipitem_armlet01, 0, 277 + item_center, 116 + item_center);}
		if global.Playerequip02 == "Power02"
		{draw_sprite(equipitem_armlet02, 0, 277 + item_center, 116 + item_center);}
	
		if global.Playerequip03 == "Jump01"
		{draw_sprite(equipitem_boots01, 0, 277 + item_center, 140 + item_center);}
		if global.Playerequip03 == "Jump02"
		{draw_sprite(equipitem_boots02, 0, 277 + item_center, 140 + item_center);}
	
		#endregion
	
		#region Player_status
		
		var draw_center_x = 107;
		var draw_center_y = 34;
		
		draw_text(draw_center_x + 27, draw_center_y, oPlayer.maxHP);
		draw_text(draw_center_x, draw_center_y, oPlayer.HP);
		draw_text(draw_center_x + 27, draw_center_y + 29, oPlayer.maxMP);
		draw_text(draw_center_x, draw_center_y + 29, oPlayer.MP);
		var text_length = string_length(oPlayer.damage);
		draw_text(draw_center_x + 80 - text_length/2 , draw_center_y, oPlayer.damage);
		var text_length = string_length(oPlayer.hspd);
		draw_text(draw_center_x + 80 - text_length/2 , draw_center_y + 29, oPlayer.hspd);
	
		#endregion
	}
	
}