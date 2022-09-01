
draw_self();

if contect == true
{
	UI_draw_interaction(oPlayer.input.UI_interaction, x, y-44);
}

if dialog_count == 0
{
	draw_sprite(UI_NPC_skill, 0, x , y - 44);
}