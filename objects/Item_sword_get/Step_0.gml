act_count --;

if act_count <=0
{

	if place_meeting(x,y,oPlayer) 
	{
		instance_create_layer(x, y-23, "Effects", ui_interaction_button);
	}

	if oPlayer.input.interaction && place_meeting(x, y, oPlayer)
	{
		global.Player_sword = true;
		global.mainquest[1] = 2;
		var text = instance_create_depth(x - 54, y - 64, 0, text_drawingob);
		if global.language == "Korean"
			{text.text = "검을 손에 넣었다!!!";}
		if global.language == "English"
			{text.text = "you've got sword!!";}
		repeat(7)
		{instance_create_layer(x, y, "Effects", oparticle_01);}
		repeat(12)
		{instance_create_layer(x, y, "Effects", oparticle_02);}
		
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

}