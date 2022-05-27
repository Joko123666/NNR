
vsp = vsp + grv;
if (place_meeting(x,y+vsp,oWall))	//공중에 떠있을 경우
		{
			while (!place_meeting(x,y+sign(vsp),oWall))
			{
				y = y + sign(vsp);
			}
			vsp = 0;
			if image_alpha >0
			{
				image_alpha -= 0.04;
				image_angle += angspd;
			}
			else
			{
				instance_destroy();
			}
		}
y = y + vsp;

if (place_meeting(x,y+sign(vsp),oWall))
{instance_destroy();}