// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_text_UI()
{
	act_count = 30;
	var text = instance_create_layer(x, y-62, "Effects", UI_text_drawingob_delay);
	text.text = Player_self_dialog(dialog_count);
	text.dianame = oPlayer.player_name;
	text.name_color = c_black;	
}