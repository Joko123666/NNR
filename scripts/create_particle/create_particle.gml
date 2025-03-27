// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_particle( argument0, argument1, argument2, argument3)
{
	///@arg x
	///@arg y
	///@arg particle
	///@arg number
	
	repeat(argument3)
	{
		instance_create_layer(argument0, argument1, "Effects", argument2);
	}
}