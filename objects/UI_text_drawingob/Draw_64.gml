var y_point = 156;
#region drawing_UItext
if !instance_exists(oPlayer) exit;
	//대화 상자 + 대화내용
	draw_sprite(UI_Hud_textbox, 0, 4, y_point);
	draw_text(8, y_point + 3, text);
	
	
	//대화 상대 이름 + 창
	if dianame != "empty"
	{
		draw_rectangle_color(8, y_point - 16, 74, y_point - 2, name_color, name_color, name_color, name_color, false);
		draw_text(10, y_point - 15, dianame);
	}
	
	
	//textbox control guide
	draw_sprite(UI_Hud_buttonbox, 0, 290, 141);
	draw_text(297, 141, oPlayer.input.UI_interaction);
	
#endregion




#region 플레이어사 없을경우 삭제
if !instance_exists(oPlayer) exit;
	
#endregion