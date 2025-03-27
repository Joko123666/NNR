

#region BlackScreen

	// 화면 넓이 가져오기
	var guiW = display_get_gui_width();
	var guiH = display_get_gui_height();
	
	if global.screen_black == true
	{draw_rectangle_color(0, 0, guiW, guiH, c_black, c_black, c_black, c_black, false);}

#endregion