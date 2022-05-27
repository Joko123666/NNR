
if global.mainstream >= check_mainstream
{
	var door = instance_create_layer(x, y, "Instances", to_nextroom_visible);
	door.room_goto_name = room_name;
	door.room_direction = room_dir;
	
	instance_destroy();
}