

switch (state)
{
	case "Counting" :
	
	vsp = vsp + grv;
	if (place_meeting(x,y+vsp,oWall))
		{
			while (!place_meeting(x,y+sign(vsp),oWall))
			{
				y = y + sign(vsp);
			}
			vsp = 0;
			speed = 0;
		}
		
	y = y + vsp;

	timer--;

	if timer <= 0
	{state = "Explosion";}
	break;
	
	case "Explosion" :
	state_set_sprite(effects_explosion01, 1, 0);
	image_xscale = 2;
	image_yscale = 2;
	if act_switch == false
	{
		act_switch = true; 
		audio_play_sound(SE_explosion02, 1, false);
		explosion_area = instance_create_depth(x, y, 10, oExplosion)
		explosion_area.image_xscale = 16;
		explosion_area.image_yscale = 16;
	}
	
	
	creat_hitbox(x, y, oPlayer, hit_32, 15, 2, 100, image_xscale);
	create_particle(x, y, oparticle_02, 3);
	screen_shake(40, 10);
	if animation_end()
	{instance_destroy();}
	break;
}
