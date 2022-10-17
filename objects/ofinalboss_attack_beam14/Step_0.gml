

if place_meeting(x, y, oPlayer) && oPlayer.invincibility == false
{
	creat_hitbox(oPlayer.x, oPlayer.y, self, hit_48, knockback_power, 1, attack_power, image_xscale);

}

if animation_hit_frame(7)
{
	act_switch = true;
	if oPlayer.y < y	&& oPlayer.x > x
	{side = 1;}
	else if oPlayer.y < y	&& oPlayer.x < x
	{side = -1;}
	else if oPlayer.y > y	&& oPlayer.x > x
	{side = -1;}
	else
	{side = 1;}
}

if act_switch == true
{image_angle += side*0.3;}

		
if animation_end()
{instance_destroy();}