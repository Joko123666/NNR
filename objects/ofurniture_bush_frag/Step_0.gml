vsp = vsp + grv;
		
		if (place_meeting(x,y+vsp,oWall))	//공중에 떠있을 경우
		{
			while (!place_meeting(x,y+sign(vsp),oWall))
			{
				y = y + sign(vsp);
			}
			vsp = 0;
		}
		
		y = y + vsp;
		
		
act_count--;
if act_count <0
{
	image_alpha -= 0.03;
	if image_alpha < 0.2
	{
		instance_destroy();
	}
}