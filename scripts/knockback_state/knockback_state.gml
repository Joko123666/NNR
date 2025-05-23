// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function knockback_state(argument0, argument1)
{
	///@arg knockback_sprite
	///@arg next_state
	
	var knockback_sprite = argument0;
	var next_state = argument1;
	
	var moving_speed = knockback_speed - knockback_resistance;
	if moving_speed < 0
	{moving_speed = 0;}
	
		state_set_sprite(knockback_sprite, 1, 0);
		image_alpha = 0.6;
		if knockback_speed != 0
		{
			image_xscale = -sign(knockback_speed);
		}
		
		move_and_collide(moving_speed, 0);

		if moving_speed >= 10 or moving_speed <= -10
		{
			var knockback_friction = 0.7;
		}
		else
		{
			var knockback_friction = 0.3;
		}
		if knockback_speed == 0 && !animation_end()
		{image_speed = 1.2;}
		knockback_speed = approach(knockback_speed, 0, knockback_friction);
		if knockback_speed == 0	&& animation_end()
		{
			image_alpha = 1;
			image_speed = 1;
			state = next_state;
		}
	
}