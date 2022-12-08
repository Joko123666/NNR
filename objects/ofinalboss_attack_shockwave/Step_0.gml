
x += moving_speed* image_xscale;
moving_speed = moving_speed*0.94;

if place_meeting(x, y, oPlayer) && oPlayer.invincibility == false
{
	creat_hitbox(x, y, self, hit_48, knockback_power, 1, attack_power, image_xscale);
	create_particle(x, y, oparticle_26, 3);
}

if animation_end()
{instance_destroy();}