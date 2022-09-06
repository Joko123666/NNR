
if animation_hit_frame(10)
{
	var beam = instance_create_layer(x, y, "Instances", ofinalboss_attack_beam2);
	beam.image_angle = image_angle;
}


if animation_end()
{instance_destroy();}