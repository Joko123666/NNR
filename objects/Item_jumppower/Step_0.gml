if place_meeting(x,y,oPlayer) 
{
	instance_create_layer(x, y-23, "Effects", ui_interaction_button);
}

if oPlayer.input.interaction && place_meeting(x, y, oPlayer)
{
	oPlayer.jumppower += 1;
	var text = instance_create_depth(x - 54, y - 64, 0, text_drawingob);
	text.text = output_message;
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