

if place_meeting(x, y, oPlayer) && oPlayer.invincibility == false
{
	creat_hitbox(oPlayer.x, oPlayer.y, self, hit_16, knockback_power, 1, attack_power, image_xscale);

}
		
if animation_end()
{instance_destroy();}