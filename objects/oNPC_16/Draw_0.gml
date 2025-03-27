
draw_self();

if contect == true
{
	UI_draw_interaction(oPlayer.input.UI_interaction, x, y-44);
}


//End quest
if global.mainstream == 19 or global.mainstream == 21	&& global.NPC16_dialog <= 13
{
	draw_sprite(UI_mainquest_success, 0, x, y - 32);
}