
draw_self();

if contect == true
{
	UI_draw_interaction(oPlayer.input.UI_interaction, x, y-44);
}


if global.mainstream == 43 
{
	draw_sprite(UI_mainquest_start, 0, x, y - 32);
}
//End quest
if global.mainstream == 41 or global.mainstream == 42
{
	draw_sprite(UI_mainquest_success, 0, x, y - 32);
}

