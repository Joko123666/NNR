
function accelmovement(argument0, argument1, argument2)
{
	///@arg accel
	///@arg deceel
	///@arg Maxspeed
	var accel = argument0;
	var deccel = argument1;
	var Maxspeed = argument2;
	
	if input.right or input.left
	{
		hspd = lerp(hspd, Maxspeed*image_xscale, accel);
	}
	else 
	{
		hspd = lerp(hspd, 0, deccel);
	}
	
}