
vsp = vsp + grv;				//중력 계산
	if (place_meeting(x,y+vsp,oWall))	//공중에 떠있을 경우
	{
		while (!place_meeting(x,y+sign(vsp),oWall))
		{	y = y + sign(vsp);	}
		vsp = 0;
	}
	
	y = y + vsp;
	
	
if place_meeting(x, y, oPlayer)
{
	global.greenorb = true;
	var text = instance_create_depth(x - 54, y - 64, 0, text_drawingob);
	text.text = output_message;
	repeat(7)
	{instance_create_layer(x, y, "Effects", oparticle_01);}
	create_particle(x, y+128, oeffect_lay_green, 1);
	
	audio_play_sound(SE_getitem, 1, false);
	audio_play_sound(SE_earthquake_02, 1, false);
	global.mainquest[5] = 2;		//퀘스트 진행도 갱신
	global.mainquest[4] = 3;	
	screen_shake(50, 10);
	instance_create_layer(oPlayer.x, oPlayer.y, "Screen", oparticle_shockwave1);
	oPlayer.maxHP += 10;
	oPlayer.maxMP += 10;
	oPlayer.revive_maxcount = 10;
	
	instance_destroy();
}