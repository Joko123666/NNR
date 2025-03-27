
if !instance_exists(oenemy_motherman)
{instance_destroy();}


speed += 0.02;
create_particle(x, y, oparticle_04, 1);

move_and_collide(0, moving_speed, oWall);
if moving_speed < 0 {moving_speed += 0.1};

if place_meeting(x, y, oPlayer) or place_meeting(x, y, oWall)
	{
		creat_hitbox(x, y, oenemy_motherman, hit_16, knockback_power, 6, attack_power, image_xscale);
		create_particle(x, y, oeffect_explosion01, 1);
		audio_play_sound(SE_explosion06, 1, false);
		screen_shake(7, 3);
		instance_destroy(target_point);
		instance_destroy();
	}