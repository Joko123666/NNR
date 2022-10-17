
if animation_hit_frame(10)
{
	instance_create_layer(x, y, "Instances", ofinalboss_attack_beam11);
}


if animation_end()
{instance_destroy();}