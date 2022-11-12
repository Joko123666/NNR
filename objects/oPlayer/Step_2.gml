
if HP<=0
{
	if Exp > 0
	{repeat(5){instance_create_depth(x, y-16, 10, oparticle_expdrop);}}
	if global.gold > 0
	{repeat(5){instance_create_depth(x, y-16, 10, oparticle_gloddrop);}}
	
	state = "Death"
	invincibility = true;
	vsp = -4; 
	moving_speed = image_xscale * -2;
	revive_count = revive_maxcount; 
	HP=1;
	global.Deathcount_total += 1;
	global.gold = 0;
	audio_play_sound(SE_death01, 1, false);
	Exp = 0;
	if level > 1	&& room!= Final_bossarea
	{
		
	}
	if room == Final_bossarea
	{
		revive_count = 1;
	}
	
}