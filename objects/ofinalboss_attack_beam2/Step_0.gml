

if place_meeting(x, y, oPlayer) && oPlayer.invincibility == false
{
	creat_hitbox(x, y, self, alart_beam2, knockback_power, 1, attack_power, image_xscale);

}
		
if animation_end()
{instance_destroy();}