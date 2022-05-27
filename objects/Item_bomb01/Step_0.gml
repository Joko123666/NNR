if place_meeting(x,y,oPlayer) 
{
	instance_create_layer(x, y-23, "Effects", ui_interaction_button);
}

if oPlayer.input.interaction && place_meeting(x, y, oPlayer) && global.Player_item != "empty"
{
	var text = instance_create_depth(x, y - 64, 0, text_drawingob);
	text.text = "이미 들고있는 아이템이 있다";
	var text_width = string_width(text.text);
	text.x -= text_width/2 + 4;
}

if oPlayer.input.interaction && place_meeting(x, y, oPlayer) && global.Player_item == "empty"
{
	global.Player_item = "Bomb01"
	var text = instance_create_depth(x, y - 64, 0, text_drawingob);
	text.text = output_message;
	var text_width = string_width(text.text);
	text.x -= text_width/2 + 4;
	repeat(7)
	{instance_create_layer(x, y, "Effects", oparticle_01);}
	
	audio_play_sound(SE_getitem, 1, false);
	
	instance_destroy();
}


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

