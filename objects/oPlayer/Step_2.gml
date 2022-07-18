
if HP<=0
{
	state = "Death"
	invincibility = true;
	vsp = -4; 
	revive_count = revive_maxcount; 
	HP=1;
	global.Deathcount_total += 1;
	global.gold = 0;
	audio_play_sound(SE_death01, 1, false);
	Exp = 0;
	if level > 1
	{
		level-= 1;
		maxHP-= 10;
		maxMP-= 10;
		MP_regen_time += 2;
		hspd -= 0.01;
		damage -= 1;
		maxExp = floor(maxExp * 0.7);
	}
}