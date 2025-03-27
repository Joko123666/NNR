
if animation_hit_frame(6)
{attack_power = 50;}

if animation_hit_frame(7)
{
	screen_shake(20, 10);
	audio_play_sound(SE_earthquake_01, 1, 0);
}



if place_meeting(x, y, oPlayer) && oPlayer.invincibility == false
{
	creat_hitbox(oPlayer.x, oPlayer.y, self, hit_48, knockback_power, 1, attack_power, image_xscale);
	create_particle(x, y, oparticle_26, 3);
}



if animation_end()
{instance_destroy();}