
function death_state(argument0)
{
///@arg death_sprite
var death_sprite = argument0;
state_set_sprite(death_sprite, 1, 0);
friction = true;

if image_index >= image_number -1
{
	image_index = image_number - 1;
	image_speed = 0;
	if image_alpha > 0
	{
		image_alpha -= 0.08;
	}
	else
	{
		instance_destroy();
	}
}

move_and_collide(knockback_speed, 0, oWall);
var knockback_friction = 0.3;
knockback_speed = approach(knockback_speed, 0, knockback_friction);

}