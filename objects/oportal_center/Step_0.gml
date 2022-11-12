


if place_meeting(x, y, oPlayer)
{
	var rm = asset_get_index(room_goto_name);
	fade_toroom(rm, 20, c_black);
	global.room_direction = room_direction;

}