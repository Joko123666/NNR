// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function disapear_object(argument0, argument1)
{
	///@arg amount
	///@arg	point
	
	var disapear_amount = argument0;
	var disapear_point = argument1;

	image_alpha -= disapear_amount;
	if image_alpha <= disapear_point
		{instance_destroy();}
}