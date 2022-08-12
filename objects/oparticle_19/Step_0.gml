image_angle += angspd;

if place_meeting(x, y, oPlayer) or place_meeting(x, y, oWall)
{creat_hitbox(x, y, oenemy_kingskull, hit_48, 5, 1, 30, image_xscale); instance_destroy();}
