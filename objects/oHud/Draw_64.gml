if !instance_exists(oPlayer)
{exit;}

var width = display_get_gui_width();
var heigth = display_get_gui_height();


#region HP_bar
	var hp_x = 43;
	var hp_y = 7;
	var hp_width = 62;
	var hp_height = 10;

	if instance_exists(oPlayer) 
	{
		draw_hp = lerp(draw_hp, oPlayer.HP, 0.2);
		draw_maxhp = oPlayer.maxHP;
	}
	else
	{
		draw_hp = lerp(draw_hp, 0, 0.05);
	}
	var hp_percent = draw_hp / draw_maxhp;
	draw_rectangle_color(hp_x, hp_y, hp_x + hp_width , hp_y + hp_height, c_dkgray, c_dkgray, c_dkgray, c_dkgray, false);
	draw_rectangle_color(hp_x, hp_y, (hp_x + hp_width * hp_percent), hp_y + hp_height, c_red, c_red, c_red, c_red, false);

	draw_line_width_color(hp_x-1, hp_y-1, hp_x + hp_width, hp_y-1, 1, c_dkgray, c_dkgray);
	draw_line_width_color(hp_x-1, hp_y + hp_height, hp_x + hp_width, hp_y + hp_height, 1, c_dkgray, c_dkgray);
	draw_line_width_color(hp_x-1, hp_y-1, hp_x-1, hp_y + hp_height, 1, c_dkgray, c_dkgray);
	draw_line_width_color(hp_x + hp_width, hp_y-1, hp_x + hp_width, hp_y + hp_height, 1, c_dkgray, c_dkgray);
#endregion
#region MP_bar
	
	var mp_x = 43;
	var mp_y = 19;
	var mp_width = 62;
	var mp_height = 10;

	if instance_exists(oPlayer) 
	{
		draw_mp = lerp(draw_mp, oPlayer.MP, 0.2);
		draw_maxmp = oPlayer.maxMP;

	}
	else
	{
		draw_mp = lerp(draw_mp, 0, 0.05);
	}
	var mp_percent = draw_mp / draw_maxmp;
	draw_rectangle_color(mp_x, mp_y, mp_x + mp_width , mp_y + mp_height, c_dkgray, c_dkgray, c_dkgray, c_dkgray, false);
	draw_rectangle_color(mp_x, mp_y, (mp_x + mp_width * mp_percent), mp_y + mp_height, c_blue, c_blue, c_blue, c_blue, false);

	draw_line_width_color(mp_x-1, mp_y-1, mp_x + mp_width, mp_y-1, 1, c_dkgray, c_dkgray);
	draw_line_width_color(mp_x-1, mp_y + mp_height, hp_x + mp_width, mp_y + mp_height, 1, c_dkgray, c_dkgray);
	draw_line_width_color(mp_x-1, mp_y-1, mp_x-1, mp_y + mp_height, 1, c_dkgray, c_dkgray);
	draw_line_width_color(mp_x + mp_width, mp_y-1, mp_x + mp_width, mp_y + mp_height, 1, c_dkgray, c_dkgray);

#endregion
		
#region Player_image		//좌상단 플레이어 이미지 (잠정 파기)
/*
if !instance_exists(oPlayer) exit;
	draw_sprite(UI_player_image_defalt, 0, 6, 6);	//
	if oPlayer.state == "Knockback"
	{draw_sprite(UI_player_image_hited, 0, 6, 6);}
	if oPlayer.state == "Death"
	{draw_sprite(UI_player_image_dead, 0, 6, 6);}
*/
#endregion

#region Item_image			//좌상단 아이템 이미지
if !instance_exists(oPlayer) exit;
	draw_sprite(UI_item_outline, 0, 6, 6);	//아이템 이미지 외곽선
	if global.Player_item == "Bushberry"
	{draw_sprite(UI_item_bushberry, 0, 7, 7);}
	if global.Player_item == "Healherb"
	{draw_sprite(UI_item_healherb, 0, 7, 7);}
	if global.Player_item == "Questmail"
	{draw_sprite(UI_item_mail, 0, 7, 7);}
	if global.Player_item == "Healpotion"
	{draw_sprite(UI_item_healpotion, 0, 7, 7);}
	if global.Player_item == "Healpotion2"
	{draw_sprite(UI_item_healpotion2, 0, 7, 7);}
	if global.Player_item == "Healthseed"
	{draw_sprite(UI_item_healthup_seed, 0, 7, 7);}
	if global.Player_item == "Bomb01"
	{draw_sprite(UI_item_bomb01, 0, 7, 7);}
	if global.Player_item == "Bomb02"
	{draw_sprite(UI_item_bomb02, 0, 7, 7);}
	if global.Player_item == "Metalsack"
	{draw_sprite(UI_item_metalsack, 0, 7, 7);}
	if global.Player_item == "Superroot"
	{draw_sprite(UI_item_superroot, 0, 7, 7);}
	if global.Player_item == "Teleportgem"
	{draw_sprite(UI_item_teleportgem, 0, 7, 7);}
	
	//스킬 사용키 표시
		var x_arraypoint = 7;
		var y_arraypoint = 32;
		var text_width = string_width(oPlayer.input.UI_itemkey) + 2;
		draw_rectangle_color(x_arraypoint -1, y_arraypoint -1, x_arraypoint + text_width +1, y_arraypoint + 11, c_ltgray, c_ltgray, c_ltgray, c_ltgray, false);
		draw_rectangle_color(x_arraypoint, y_arraypoint, x_arraypoint + text_width, y_arraypoint + 10, c_white, c_white, c_white, c_white, false);
		draw_text_color(x_arraypoint, y_arraypoint, oPlayer.input.UI_itemkey, c_gray, c_gray, c_gray, c_gray, 1);
#endregion

#region Player_Level		//좌상단 레벨 표시
if !instance_exists(oPlayer) exit;
	
	draw_text(44, 32, "Lv.");
	draw_text(56, 32, oPlayer.level);
	
	var exp_x = 44;
	var exp_y = 44;
	var exp_width = 30;
	var exp_height = 2;

	if instance_exists(oPlayer) 
	{
		draw_exp = lerp(draw_exp, oPlayer.Exp, 0.2);
		draw_maxexp = oPlayer.maxExp;
	}
	else
	{
		draw_hp = lerp(draw_hp, 0, 0.05);
	}
	var exp_percent = draw_exp / draw_maxexp;
	//draw_rectangle_color(exp_x, exp_y, exp_x + exp_width , exp_y + exp_height, c_dkgray, c_dkgray, c_dkgray, c_dkgray, false);
	draw_rectangle_color(exp_x, exp_y, (exp_x + exp_width * exp_percent), exp_y + exp_height, c_lime, c_lime, c_lime, c_lime, false);

	draw_line_width_color(exp_x-1, exp_y-1, exp_x + exp_width, exp_y-1, 1, c_ltgray, c_ltgray);
	draw_line_width_color(exp_x-1, exp_y + exp_height, exp_x + exp_width, exp_y + exp_height, 1, c_ltgray, c_ltgray);
	draw_line_width_color(exp_x-1, exp_y-1, exp_x-1, exp_y + exp_height, 1, c_ltgray, c_ltgray);
	draw_line_width_color(exp_x + exp_width, exp_y-1, exp_x + exp_width, exp_y + exp_height, 1, c_ltgray, c_ltgray);
	
#endregion


#region Quest_board			//우상단 퀘스트 가이드
if !instance_exists(oPlayer) {exit;}
	if room != Thomb_boss && room != Vally_tunnel_boss && room != Final_bossarea  && room != Final_bossarea_end
	{if global.quest_stack[1] != "empty"
	{
		draw_sprite(UI_Hud_questbox, 0, 220, 5);
		quest_board1 = global.quest_stack[1];
		draw_text_color(228, 7, quest_board_text(quest_board1), c_blue, c_blue, c_blue, c_blue, 0.8);
		draw_text_color(228, 7, quest_board_text(quest_board1), c_dkgray, c_dkgray, c_dkgray, c_dkgray, 0.7);
		quest_board1_state = quest_state_update(quest_board1);
		if quest_board1_state == 2
			{draw_rectangle_color(222, 10, 228, 16, c_green, c_green, c_green, c_green, false);
			 draw_text_color(228, 7, quest_board_text(quest_board1), c_dkgray, c_dkgray, c_dkgray, c_dkgray, 1);	}
		draw_rectangle_color(224, 12, 226, 14, c_white, c_white, c_white, c_white, false);
		if quest_board1_state == 3
			{global.quest_stack[1] = "empty"; quest_board1 = "empty";}
	}
	else {quest_board1 = "empty";}
	
	if global.quest_stack[2] != "empty"
	{
		draw_sprite(UI_Hud_questbox, 0, 220, 25);
		quest_board2 = global.quest_stack[2];
		draw_text_color(228, 27, quest_board_text(quest_board2), c_blue, c_blue, c_blue, c_blue, 0.8);
		draw_text_color(228, 27, quest_board_text(quest_board2), c_dkgray, c_dkgray, c_dkgray, c_dkgray, 0.7);
		quest_board2_state = quest_state_update(quest_board2);
		if quest_board2_state == 2
			{draw_rectangle_color(222, 30, 228, 36, c_green, c_green, c_green, c_green, false);
			 	draw_text_color(228, 27, quest_board_text(quest_board2), c_dkgray, c_dkgray, c_dkgray, c_dkgray, 1);}
		draw_rectangle_color(224, 32, 226, 34, c_white, c_white, c_white, c_white, false);
		
		if quest_board2_state == 3
			{global.quest_stack[2] = "empty"; quest_board2 = "empty";}
	}
	else {quest_board2 = "empty";}
	
	if global.quest_stack[3] != "empty"
	{
		draw_sprite(UI_Hud_questbox, 0, 220, 45);
		quest_board3 = global.quest_stack[3];
		draw_text_color(228, 47, quest_board_text(quest_board3), c_blue, c_blue, c_blue, c_blue, 0.8);
		draw_text_color(228, 47, quest_board_text(quest_board3), c_dkgray, c_dkgray, c_dkgray, c_dkgray, 0.7);
		quest_board3_state = quest_state_update(quest_board3);
		if quest_board3_state == 2
			{draw_rectangle_color(222, 50, 228, 56, c_green, c_green, c_green, c_green, false);
			 draw_text_color(228, 47, quest_board_text(quest_board3), c_dkgray, c_dkgray, c_dkgray, c_dkgray, 1);	}
		draw_rectangle_color(224, 52, 226, 54, c_white, c_white, c_white, c_white, false);
		if quest_board3_state == 3
			{global.quest_stack[3] = "empty"; quest_board3 = "empty";}
	}
	else {quest_board3 = "empty";}
	}
	
	

#endregion

//하단 이미지
if global.UItext_show == false
{

	#region Gold_show			//우하단 골드 표시
		if !instance_exists(oPlayer) exit;
		if oPlayer.state != "Stay"	&& room!=Thomb_boss && room != Vally_tunnel_boss && room != Final_bossarea && room != Final_bossarea_end
		{
			draw_sprite(UI_Hud_gold, 0, 270, 162);
			draw_text(275, 162, global.gold);
		}	

	#endregion

	#region Skillcool_Moveskill		//좌하단 스킬 쿨타임 이미지 - 이동스킬
	if !instance_exists(oPlayer) exit;
	if oPlayer.state != "Stay"
	{
		var x_point = 4;
		var y_point = 152;
		if room == Thomb_boss or room == Vally_tunnel_boss or room == Final_bossarea or room == Final_bossarea_end
		{y_point = camera_get_view_height(view_camera[1]) - 28;}
		
		if oPlayer.moveskill_set == 1
		{draw_sprite(UI_skillcool_sp1, 0, x_point, y_point); }
		if oPlayer.moveskill_set == 2
		{draw_sprite(UI_skillcool_sp2, 0, x_point, y_point); }
		if oPlayer.moveskill_set == 3
		{draw_sprite(UI_skillcool_sp3, 0, x_point, y_point); }
		if oPlayer.moveskill_set == 4
		{draw_sprite(UI_skillcool_sp4, 0, x_point, y_point); }
		if oPlayer.moveskill_set == 5
		{draw_sprite(UI_skillcool_sp5, 0, x_point, y_point); }
		if oPlayer.moveskill_set == 6
		{draw_sprite(UI_skillcool_sp6, 0, x_point, y_point); }
	
		if oPlayer.state == "Moveskill"
		{draw_sprite(UI_skillact_blue, 0, x_point-1, y_point-1);}
		if oPlayer.moveskill_cool > 0 
		{draw_sprite_ext(UI_skillcool_gray, 0, x_point + 1, y_point + 1, (oPlayer.moveskill_cool/oPlayer.moveskill_maxcool), 1, 0, -1, 0.8);}
		
		//스킬 사용키 표시
		var x_arraypoint = x_point+1;
		var y_arraypoint = y_point-12;
		if room == Thomb_boss or room == Vally_tunnel_boss or room == Final_bossarea
		{y_arraypoint = camera_get_view_height(view_camera[1]) - 40;}
		var text_width = string_width(oPlayer.input.UI_moveskill);
		draw_rectangle_color(x_arraypoint -1, y_arraypoint -1, x_arraypoint + text_width +1, y_arraypoint + 11, c_ltgray, c_ltgray, c_ltgray, c_ltgray, false);
		draw_rectangle_color(x_arraypoint, y_arraypoint, x_arraypoint + text_width, y_arraypoint + 10, c_white, c_white, c_white, c_white, false);
		draw_text_color(x_arraypoint, y_arraypoint, oPlayer.input.UI_moveskill, c_gray, c_gray, c_gray, c_gray, 1);
	}
	
	#endregion
	#region Skillcool_A			//좌하단 스킬 쿨타임 이미지 - 공격스킬
	if !instance_exists(oPlayer) exit;
	if oPlayer.state != "Stay"
	{
		//정렬 포인트 세팅
		var x_point = 32;
		var y_point = 152;
		if room == Thomb_boss or room == Vally_tunnel_boss or room == Final_bossarea or room == Final_bossarea_end
		{y_point = camera_get_view_height(view_camera[1]) - 28;}
		
		// Skill Image
		if global.Player_sword == false
		{draw_sprite(UI_skillcool_skillA, 0, 32, 152);}
	
		if global.Player_sword == true	&& oPlayer.attackskill_set == 1
		{draw_sprite(UI_skillcool_skillA_sword0, 0, x_point, y_point);}
		if global.Player_sword == true	&&  oPlayer.attackskill_set == 2
		{draw_sprite(UI_skillcool_skillA_sword1, 0, x_point, y_point);}
		if global.Player_sword == true	&&  oPlayer.attackskill_set == 3
		{draw_sprite(UI_skillcool_skillA_sword2, 0, x_point, y_point);}
		if global.Player_sword == true	&&  oPlayer.attackskill_set == 4
		{draw_sprite(UI_skillcool_skillA_sword3, 0, x_point, y_point);}
		if global.Player_sword == true	&&  oPlayer.attackskill_set == 5
		{draw_sprite(UI_skillcool_skillA_sword4, 0, x_point, y_point);}
		if global.Player_sword == true	&&  oPlayer.attackskill_set == 6
		{draw_sprite(UI_skillcool_skillA_sword5, 0, x_point, y_point);}
	
		// UI square
		if oPlayer.state == "Attackskill1"
		{draw_sprite(UI_skillact_blue, 0, x_point-1, y_point-1);}
	
		if oPlayer.skillS_cool > 0 
		{draw_sprite_ext(UI_skillcool_gray, 0, x_point+1, y_point+1, (oPlayer.skillS_cool/oPlayer.skillS_maxcool), 1, 0, -1, 0.8);}
	
		if oPlayer.MP < oPlayer.attackskill_cost
		{draw_rectangle_color(x_point, y_point, x_point+24, y_point+24, c_dkgray, c_dkgray, c_dkgray, c_dkgray, false);}
		
		//스킬 사용키 표시
		var x_arraypoint = x_point+1;
		var y_arraypoint = y_point-12;
		var text_width = string_width(oPlayer.input.UI_attackskill);
		draw_rectangle_color(x_arraypoint -1, y_arraypoint -1, x_arraypoint + text_width +1, y_arraypoint + 11, c_ltgray, c_ltgray, c_ltgray, c_ltgray, false);
		draw_rectangle_color(x_arraypoint, y_arraypoint, x_arraypoint + text_width, y_arraypoint + 10, c_white, c_white, c_white, c_white, false);
		draw_text_color(x_arraypoint, y_arraypoint, oPlayer.input.UI_attackskill, c_gray, c_gray, c_gray, c_gray, 1);
	}	
	#endregion

}


#region text_UI
/*
if !instance_exists(Player) exit;
var text = "# : " + string(Player.Exp);
var text_width = string_width(text);
var text_height = string_height(text);
var text_level = "World Level " + string(global.world_level);
var start_x = 8;
var start_y = 38;
var padding_x = 6;
var padding_y = 4;

draw_rectangle_color(start_x, start_y, start_x + text_width + padding_x, start_y + text_height + padding_y, c_dkgray, c_dkgray, c_dkgray, c_dkgray, false);
draw_text(start_x + padding_x, start_y + padding_y, text);

draw_text(540, 16 , text_level);

draw_sprite(skillB, empty, 40, 324);
draw_rectangle_color(40, 356 - Player.skillS_cool*32/Player.skillS_maxcool, 72, 356, c_dkgray, c_dkgray, c_dkgray, c_dkgray, false);
draw_sprite(skillA, empty, 4, 324);
draw_rectangle_color(4, 356 - Player.rolling_cool*32/Player.rolling_maxcool, 36, 356, c_dkgray, c_dkgray, c_dkgray, c_dkgray, false);
*/
#endregion


if darken_screen > 0
{
	draw_set_alpha(darken_screen/50);
	if darken_screen > 50 {draw_set_alpha(1);}
	draw_rectangle_color(-10, -10, width + 10, heigth + 10, c_black, c_black, c_black, c_black, false);
}
else
{draw_set_alpha(1);}

