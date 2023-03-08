if place_meeting(x,y,oPlayer) && act_count <= 0
{
	instance_create_layer(x, y-23, "Effects", ui_interaction_button);
}

if oPlayer.input.interaction && place_meeting(x, y, oPlayer) && act_count <= 0
{
	if global.Playerequip02 == "Power01"
	{oPlayer.damage += 4;}
	oPlayer.damage += 6;
	global.Playerequip02 = "Power02";
	var text = instance_create_depth(x , y - 64, 0, text_drawingob);
	if global.language == "Korean"
		{text.text = "공격력이 증가했다!";}
	if global.language == "English"
		{text.text = "attack power increased!";}
	var text_width = string_width(text.text);
	text.x -= text_width/2 + 4;
	
	repeat(7)
	{instance_create_layer(x, y, "Effects", oparticle_01);}
	
	audio_play_sound(SE_getitem, 1, false);
	
	instance_destroy();
}

if act_count > 0
{act_count--;}

vsp = vsp + grv/2;
if (place_meeting(x,y+vsp,oWall))
	{
		while (!place_meeting(x,y+sign(vsp),oWall))
		{
			y = y + sign(vsp);
		}
		vsp = 0;
	}
		
y = y + vsp;