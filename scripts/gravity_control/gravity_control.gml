
function gravity_control(argument0, argument1)
{
	///@arg vsp
	///@arg gravity
	var vsp = argument0;
	var grv = argument1;
	
	vsp = vsp + grv;


	//Veltical Collosion
	if (place_meeting(x, y + vsp ,oWall))
	{
		while (!place_meeting(x ,y + sign(vsp) ,oWall))
		{
			y = y + sign(vsp);
		}
		vsp = 0;
	}
	y = y + vsp;

}