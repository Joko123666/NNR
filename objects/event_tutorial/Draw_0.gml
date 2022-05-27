var y_point = 40;
if global.mainstream == 3
{
		var x_set = x + 36;
		var y_set = y - y_point;
		var key_length = string_width(oPlayer.input.UI_jumpkey);
		var text_length = string_width("점프");
		draw_rectangle_color(x_set - 2 - key_length , y_set - 2, x_set + key_length + 2, y_set + 16, c_gray, c_gray, c_gray, c_gray, 0);
		draw_text_color(x_set - (key_length/2) , y_set, oPlayer.input.UI_jumpkey, c_white, c_white, c_white, c_white, 1);
		draw_text_color(x_set - (text_length/2), y_set - 24, "점프", c_white, c_white, c_white, c_white, 1);
		
}

if global.mainstream == 5
{
		var x_set = x + 36;
		var y_set = y - y_point;
		var key_length = string_width(oPlayer.input.UI_attackkey);
		var text_length = string_width("기본공격");
		draw_rectangle_color(x_set - 2 - key_length , y_set - 2, x_set + key_length + 2, y_set + 16, c_gray, c_gray, c_gray, c_gray, 0);
		draw_text_color(x_set - (key_length/2) , y_set, oPlayer.input.UI_attackkey, c_white, c_white, c_white, c_white, 1);
		draw_text_color(x_set - (text_length/2), y_set - 24, "기본공격", c_white, c_white, c_white, c_white, 1);
		
		
		var x_set = x + 124;
		var y_set = y - y_point;
		var key_length = string_width(oPlayer.input.UI_attackskill);
		var text_length = string_width("공격스킬");
		draw_rectangle_color(x_set - 2 - key_length , y_set - 2, x_set + key_length + 2, y_set + 16, c_gray, c_gray, c_gray, c_gray, 0);
		draw_text_color(x_set - (key_length/2) , y_set, oPlayer.input.UI_attackskill, c_white, c_white, c_white, c_white, 1);
		draw_text_color(x_set - (text_length/2), y_set - 24, "공격스킬", c_white, c_white, c_white, c_white, 1);
}


if global.mainstream == 7
{
		var x_set = x + 36;
		var y_set = y - y_point;
		var key_length = string_width(oPlayer.input.UI_moveskill);
		var text_length = string_width("이동스킬");
		draw_rectangle_color(x_set - 2 - key_length , y_set - 2, x_set + key_length + 2, y_set + 16, c_gray, c_gray, c_gray, c_gray, 0);
		draw_text_color(x_set - (key_length/2) , y_set, oPlayer.input.UI_moveskill, c_white, c_white, c_white, c_white, 1);
		draw_text_color(x_set - (text_length/2), y_set - 24, "이동스킬", c_white, c_white, c_white, c_white, 1);
		
		
		var x_set = x + 124;
		var y_set = y - y_point;
		var key_length = string_width(oPlayer.input.UI_itemkey);
		var text_length = string_width("아이템 사용");
		draw_rectangle_color(x_set - 2 - key_length , y_set - 2, x_set + key_length + 2, y_set + 16, c_gray, c_gray, c_gray, c_gray, 0);
		draw_text_color(x_set - (key_length/2) , y_set, oPlayer.input.UI_itemkey, c_white, c_white, c_white, c_white, 1);
		draw_text_color(x_set - (text_length/2), y_set - 24, "아이템 사용", c_white, c_white, c_white, c_white, 1);
}
