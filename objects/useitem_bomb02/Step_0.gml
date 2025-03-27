

switch (state)
{
	case "Counting" :
	
	vsp = vsp + grv;
	if (place_meeting(x,y+vsp,oWall)) or (place_meeting(x,y+vsp,Enemy_wall))
		{
			while (!place_meeting(x,y+sign(vsp),oWall))	&& (!place_meeting(x,y+sign(vsp),Enemy_wall))
			{
				y = y + sign(vsp);
			}
			vsp = 0;
			speed = 0;
		}
		
	y = y + vsp;

	timer--;

	if timer <= 0
	{state = "Explosion";image_index = 0; image_speed = 1;}
	break;
	
	case "Explosion" :
	state_set_sprite(effects_explosion01, 1, 0);
	image_xscale = 3;
	image_yscale = 3;
	if act_switch == false
	{
		act_switch = true; audio_play_sound(SE_explosion02, 1, false);
		explosion_area = instance_create_depth(x, y, 10, oExplosion)
		explosion_area.image_xscale = 24;
		explosion_area.image_yscale = 24;
	}
	if animation_hit_frame(1)
	{creat_hitbox(x, y, oPlayer, hit_48, 15, 2, 300, image_xscale);}
	if place_meeting(x, y, oenemy_motherman)
	{creat_hitbox(x, y, oPlayer, hit_48, 15, 2, 200, image_xscale);}
	
	
	
	create_particle(x, y, oparticle_02, 3);
	screen_shake(60, 10);
	if animation_end()
	{instance_destroy();}
	break;
}
