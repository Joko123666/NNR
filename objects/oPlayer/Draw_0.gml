if room != Title && room!= endroom_end_everything && room != endroom_keep && room != exitroom
{draw_self();}

if dialog_count > 1	&& global.mainstream < 10
{
	var key = input.UI_interaction
	draw_text(x - string_width(key)/2, y -48, key);
}

if notenough_text == true
{
	var text = "마나가 부족해"
	var text_width = string_width(text);
	draw_text(x - text_width/2, y - 48, text);
}
if notready_text == true
{
	var text = "준비가 안됐어"
	var text_width = string_width(text);
	draw_text(x - text_width/2, y - 48, text);
}

if state == "Death"
{
	var height = 32;
	draw_rectangle_color(x - 12 , y - height , x + 12 - (revive_count / revive_maxcount)*24, y - (height-2), c_white, c_white, c_white, c_white, false);
	draw_sprite(enemy_healthbar_s, 0, x-12, y-height);
	
	var text = "Press '" + input.UI_interaction + "' button"
	var text_width = string_width(text);
	draw_text(x - text_width/2, y - 48, text);
}

if dia_switch == true
{
	var text_width = string_width(diatext);
	var text_height = string_height(diatext);

	draw_rectangle_color(x - text_width/2 - 4, y - 62, x + text_width/2 + 4, y + text_height -58, c_ltgray, c_ltgray, c_ltgray, c_ltgray, false);
	draw_rectangle_color(x - text_width/2 - 2, y - 61, x + text_width/2 + 2, y + text_height -59, c_dkgray, c_dkgray, c_dkgray, c_dkgray, false);
	draw_text(x - text_width/2, y - 60, diatext);
}