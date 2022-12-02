
if animation_hit_frame(10)
{
	var beam = instance_create_layer(x, y, "Instances", ofinalboss_attack_beam13);
	beam.image_angle = image_angle;
	audio_play_sound(SE_electric_wave_04, 1 ,0);
}


if animation_end()
{instance_destroy();}