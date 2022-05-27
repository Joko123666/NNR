
draw_self();

if state == "Death" {exit;}
if alarm[0] > 0
{
	var height = sprite_height;
	draw_rectangle_color(x - 32 , y - height , x -32 + (HP / maxHP)*64, y - (height-6), c_white, c_white, c_white, c_white, false);
	draw_sprite(boss_healthbar, 0, x-32, y-height);
}