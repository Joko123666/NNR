
draw_self();

if contect == true
{
	UI_draw_interaction(oPlayer.input.UI_interaction, x, y-44);
}


if global.mainstream == 18
{
	draw_sprite(UI_mainquest_start, 0, x + 14*image_xscale, y - 24);
}
//End quest
if global.mainstream == 21
{
	draw_sprite(UI_mainquest_success, 0, x + 14*image_xscale, y - 24);
}