
draw_self();

if contect == true
{
	UI_draw_interaction(oPlayer.input.UI_interaction, x, y-44);
}

if dialog_count <=12	&& deactivate_count <= 0
{
	draw_sprite(UI_NPC_skill, 0, x , y - 44);
}
/*
#region 이름 표시
var name_textob = instance_create_layer(x, y + 2, "Effects", text_namedrawing);
name_textob.text = name_text;
#endregion