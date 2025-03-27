
draw_self();


if dia_switch == true
{
	var text_width = string_width(diatext);
	var text_height = string_height(diatext);

	draw_rectangle_color(x - text_width/2 - 4, y - 62, x + text_width/2 + 4, y + text_height -58, c_ltgray, c_ltgray, c_ltgray, c_ltgray, false);
	draw_rectangle_color(x - text_width/2 - 2, y - 61, x + text_width/2 + 2, y + text_height -59, c_dkgray, c_dkgray, c_dkgray, c_dkgray, false);
	draw_text(x - text_width/2, y - 60, diatext);
}

if state == "Death" {exit;}
if alarm[0] > 0
{
	var height = sprite_height;
	draw_rectangle_color(x - 32 , y - height , x -32 + (HP / maxHP)*64, y - (height-6), c_white, c_white, c_white, c_white, false);
	draw_sprite(boss_healthbar, 0, x-32, y-height);
}

if oPlayer.state == "Death"
{
	var text_width = string_width(deadtext);
	var text_height = string_height(deadtext);

	draw_rectangle_color(x - text_width/2 - 4, y - 62, x + text_width/2 + 4, y + text_height -58, c_ltgray, c_ltgray, c_ltgray, c_ltgray, false);
	draw_rectangle_color(x - text_width/2 - 2, y - 61, x + text_width/2 + 2, y + text_height -59, c_dkgray, c_dkgray, c_dkgray, c_dkgray, false);
	draw_text(x - text_width/2, y - 60, deadtext);
}
