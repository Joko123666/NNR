	
	x += hspd * image_xscale;
	hspd += 0.05;
	if hspd >= 4
	{hspd = 4;}

switch (state)
{
	case "Counting" :
	
	timer--;

	if timer <= 0
	{state = "Explosion";image_index = 0; image_speed = 1;}
	if place_meeting(x, y, oEnemy)
	{state = "Explosion";}
	break;
	
	case "Explosion" :
	
	if act_switch == false
	{
		act_switch = true; 
		instance_create_depth(x, y, 1, oparticle_explosion2);
		creat_hitbox(x, y, oPlayer, hit_32, 5, 3, 190, image_xscale);
		audio_play_sound(SE_explosion01, 1, false);
		act_count = 13;
		act_count2--;
		if act_count2 <=0
		{instance_destroy();}
	}
	if act_switch == true
	{
		act_count--;
		if act_count <= 0
		{act_switch = false;}
	}

	break;
}
