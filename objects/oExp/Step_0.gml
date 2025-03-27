
if !instance_exists(oPlayer) exit;
var dir = point_direction(x, y, oPlayer.x, oPlayer.y);
var acc = 0.4;
motion_add(dir, acc);
image_angle = image_angle + rotate_speed;
instance_create_depth(x, y, 2, oexp_a);
var max_speed = 10;
if speed >= max_speed
{
	speed = max_speed;
}