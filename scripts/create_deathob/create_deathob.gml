
function create_deathob(argument0, argument1, argument2, argument3)
{
	///@arg sprite
	///@arg object
	///@arg xrange
	///@arg yrange
	
	var death_sprite = argument0;
	var death_object = argument1;
	var xrange = argument2;
	var yrange = argument3;
	var number = sprite_get_number(death_sprite);
	
		for (var i = 0 ; i < number ; i++)
		{
			var bx = x + random_range(-xrange , xrange);
			var by = y + random_range(-yrange , -yrange/2);
			var bone = instance_create_layer(bx, by, "Instances", death_object);
			bone.direction = 90 + (image_xscale * random_range(30, 80));
			bone.speed = random_range(2, 4);
			bone.image_index = i;
			bone.image_speed = 0;
			show_debug_message(i);
		}

}