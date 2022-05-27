
if global.chest_number[chest_number] == true
	{opened = true; sprite_index = chest_opened;}

if place_meeting(x,y,oPlayer) && opened == false
{
	instance_create_layer(x, y-48, "Effects", ui_interaction_button);
}

if place_meeting(x, y, oPlayer) && oPlayer.input.interaction && opened == false
	{
		instance_create_depth(x, y - 36, 1, item_name);
		sprite_index = chest_opened;
		opened = true;
		global.chest_number[chest_number] = true;
	}
	