
draw_self();

if contect == true
{
	UI_draw_interaction(oPlayer.input.UI_interaction, x, y-44);
}

if global.NPC21_dialog <= 2
{draw_sprite(UI_mainquest_start, 0, x, y - 36);}



/*
#region 이름 표시
var name_textob = instance_create_layer(x, y, "Effects", text_namedrawing);
name_textob.text = name_text;
#endregion