
draw_self();

if state == "Death" {exit;}
if alarm[0] > 0
{
	var height = sprite_height;
	draw_rectangle_color(x - 12 , y - height , x -12 + (HP / maxHP)*24, y - (height-2), c_white, c_white, c_white, c_white, false);
	draw_sprite(enemy_healthbar_s, 0, x-12, y-height);
}