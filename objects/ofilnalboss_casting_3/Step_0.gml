
if animation_hit_frame(20)
{
	var cast = instance_create_layer(x, y, "Instances", ofinalboss_place_rock);
	cast.image_xscale = image_xscale;
}


if animation_end()
{instance_destroy();}