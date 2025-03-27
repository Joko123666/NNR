
if animation_hit_frame(10)
{	
	instance_create_layer(x, y, "Instances", ofinalboss_attack_beam21);
	audio_play_sound(SE_electric_wave_03, 1 ,0);
}


if animation_end()
{instance_destroy();}