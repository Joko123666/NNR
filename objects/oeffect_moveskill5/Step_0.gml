image_alpha -= 0.03;
image_angle += 12;
if image_alpha <= 0.1
{
	create_particle(x, y, oeffect_explosion01, 1);
	creat_hitbox(x, y, oPlayer, hit_48, 7, 6, oPlayer.damage*2, image_xscale);
	audio_play_sound(SE_explosion01, 1, false);
	instance_destroy();
}
image_xscale = oPlayer.image_xscale;