
if !instance_exists(other) exit;
var dir = point_direction(x, y, other.x, other.y);
var acc = 0.4;
motion_add(dir, acc);