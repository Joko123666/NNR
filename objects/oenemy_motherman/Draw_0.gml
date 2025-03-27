
draw_self();

if electric_charge_A == true
	{
		draw_sprite(enemy_vally_motherman_charge_A, 0, x, y);
	}
if electric_charge_B == true
	{
		draw_sprite(enemy_vally_motherman_charge_B, 0, x, y);
	}

if state == "Death" {exit;}
if alarm[0] > 0
{
	var height = sprite_height;
	draw_rectangle_color(x - 32 , y - height , x -32 + (HP / maxHP)*64, y - (height-6), c_white, c_white, c_white, c_white, false);
	draw_sprite(boss_healthbar, 0, x-32, y-height);
}