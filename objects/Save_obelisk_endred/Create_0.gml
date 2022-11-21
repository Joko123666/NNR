
state = "deactive";
act_count = 30;

defalt_sprite = Save_obelisk_noorb;
active_sprite = Save_obelisk_redorb;

image_speed = 0;
act_switch = false;

if global.redorb == false
{
	state = "done"; 
	image_speed = 0;
	sprite_index = Save_obelisk_redorb;
	image_index = 11;
}