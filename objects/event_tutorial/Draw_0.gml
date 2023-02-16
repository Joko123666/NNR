var y_point = 40;
if global.mainstream == 3
{
		if global.language == "Korean"
		{var text = "점프";}
		if global.language == "English"
		{var text = "Jump";}
		var x_set = x + 36;
		var y_set = y - y_point;
		var key_length = string_width(oPlayer.input.UI_jumpkey);
		var text_length = string_width(text);
		draw_rectangle_color(x_set - 2 - key_length , y_set - 2, x_set + key_length + 2, y_set + 16, c_gray, c_gray, c_gray, c_gray, 0);
		draw_text_color(x_set - (key_length/2) , y_set, oPlayer.input.UI_jumpkey, c_white, c_white, c_white, c_white, 1);
		draw_text_color(x_set - (text_length/2), y_set - 24, text, c_white, c_white, c_white, c_white, 1);
		
}

if global.mainstream == 5
{
		if global.language == "Korean"
		{var text = "기본공격";}
		if global.language == "English"
		{var text = "Attack";}
		var x_set = x + 36;
		var y_set = y - y_point;
		var key_length = string_width(oPlayer.input.UI_attackkey);
		var text_length = string_width(text);
		draw_rectangle_color(x_set - 2 - key_length , y_set - 2, x_set + key_length + 2, y_set + 16, c_gray, c_gray, c_gray, c_gray, 0);
		draw_text_color(x_set - (key_length/2) , y_set, oPlayer.input.UI_attackkey, c_white, c_white, c_white, c_white, 1);
		draw_text_color(x_set - (text_length/2), y_set - 24, text, c_white, c_white, c_white, c_white, 1);
		
		if global.language == "Korean"
		{var text = "공격스킬";}
		if global.language == "English"
		{var text = "Attack Skill";}
		var x_set = x + 124;
		var y_set = y - y_point;
		var key_length = string_width(oPlayer.input.UI_attackskill);
		var text_length = string_width(text);
		draw_rectangle_color(x_set - 2 - key_length , y_set - 2, x_set + key_length + 2, y_set + 16, c_gray, c_gray, c_gray, c_gray, 0);
		draw_text_color(x_set - (key_length/2) , y_set, oPlayer.input.UI_attackskill, c_white, c_white, c_white, c_white, 1);
		draw_text_color(x_set - (text_length/2), y_set - 24, text, c_white, c_white, c_white, c_white, 1);
}


if global.mainstream == 7
{
		if global.language == "Korean"
		{var text = "이동스킬";}
		if global.language == "English"
		{var text = "Move Skill";}
		var x_set = x + 36;
		var y_set = y - y_point;
		var key_length = string_width(oPlayer.input.UI_moveskill);
		var text_length = string_width(text);
		draw_rectangle_color(x_set - 2 - key_length , y_set - 2, x_set + key_length + 2, y_set + 16, c_gray, c_gray, c_gray, c_gray, 0);
		draw_text_color(x_set - (key_length/2) , y_set, oPlayer.input.UI_moveskill, c_white, c_white, c_white, c_white, 1);
		draw_text_color(x_set - (text_length/2), y_set - 24, text, c_white, c_white, c_white, c_white, 1);
		
		if global.language == "Korean"
		{var text = "아이템 사용";}
		if global.language == "English"
		{var text = "Use Item";}
		var x_set = x + 124;
		var y_set = y - y_point;
		var key_length = string_width(oPlayer.input.UI_itemkey);
		var text_length = string_width(text);
		draw_rectangle_color(x_set - 2 - key_length , y_set - 2, x_set + key_length + 2, y_set + 16, c_gray, c_gray, c_gray, c_gray, 0);
		draw_text_color(x_set - (key_length/2) , y_set, oPlayer.input.UI_itemkey, c_white, c_white, c_white, c_white, 1);
		draw_text_color(x_set - (text_length/2), y_set - 24, text, c_white, c_white, c_white, c_white, 1);
}
