
if global.redorb == true
{sprite_index = NPC_village_23_end;}

if global.redorb == false
{sprite_index = NPC_village_23;}

if global.redorb == false && place_meeting(x, y, oPlayer)	&& oPlayer.input.interaction
{
	var text = instance_create_layer(x, y-62, "Effects", text_drawingob);
	text.text = NPC_end_dialog(6);			//대사 스크립트 불러오기
	var text_width = string_width(text.text);
	text.x -= text_width/2 + 4;
	audio_play_sound(SE_system06, 1, 0);
}