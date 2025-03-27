
function screen_shake(argument0, argument1)
{
	///@arg intensity
	///@arg duration
	var intensity = argument0;
	var duration = argument1;
	
	if !instance_exists(oCamera) exit;
	
	with (oCamera)
	{
		screenshake_x = intensity;
		screenshake_y = intensity;
		alarm[0] = duration;
	}
}