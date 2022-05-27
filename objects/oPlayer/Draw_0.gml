if room != Title
{draw_self();}


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