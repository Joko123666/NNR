
draw_self();

if contect == true
{
	UI_draw_interaction(oPlayer.input.UI_interaction, x, y-44);
}


if global.subquest[1] == 0	&& global.mainstream >= 18
{
	draw_sprite(UI_subquest_start, 0, x, y - 32);
}
//End quest
if global.Player_item == "Bushberry"	&& global.NPC4_dialog <6
{
	draw_sprite(UI_subquest_success, 0, x, y - 32);
}
/*
#region 이름 표시
var name_textob = instance_create_layer(x, y + 2, "Effects", text_namedrawing);
name_textob.text = name_text;
#endregion