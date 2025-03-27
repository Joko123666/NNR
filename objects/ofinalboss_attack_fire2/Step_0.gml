
act_count++;
image_angle += 1;

if act_count == 30 or act_count == 60 or act_count == 90 or act_count == 120 or act_count == 150 
{
	var attack1 = instance_create_layer(x, y , "Instances", ofinalboss_attack_fire3);
	var attack2 = instance_create_layer(x, y , "Instances", ofinalboss_attack_fire3);
	var attack3 = instance_create_layer(x, y , "Instances", ofinalboss_attack_fire3);
	var attack4 = instance_create_layer(x, y , "Instances", ofinalboss_attack_fire3);
	attack1.image_angle = image_angle;
	attack2.image_angle = image_angle + 90;
	attack3.image_angle = image_angle + 180;
	attack4.image_angle = image_angle + 270;
}

if act_count >= 160
{instance_destroy();}

if place_meeting(x, y, oPlayer)
{creat_hitbox(x, y, self, hit_64, knockback_power, 1, attack_power, image_xscale);}
