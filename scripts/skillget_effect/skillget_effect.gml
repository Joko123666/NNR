// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function skillget_effect(x_point, y_point, effect_number)
{
	repeat(effect_number)
	{
		instance_create_depth(x_point, y_point, 1, oparticle_33);
		instance_create_depth(x_point, y_point, 1, oparticle_34);
		instance_create_depth(x_point, y_point, 1, oparticle_35);
	}
}