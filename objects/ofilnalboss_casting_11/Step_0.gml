
if animation_hit_frame(20)
{
	var cast = instance_create_layer(x, y, "Instances", ofinalboss_attack_fire11);
	cast.image_xscale = image_xscale;
	audio_play_sound(SE_shoot_03, 1 ,0);
}


if animation_end()
{instance_destroy();}