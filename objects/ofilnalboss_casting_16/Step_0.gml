
if animation_hit_frame(15)
{
	var attack1 = instance_create_layer(x+32, y-32, "Instances", ofinalboss_attack_rock12);
	var attack2 = instance_create_layer(x+32, y, "Instances", ofinalboss_attack_rock12);
	var attack3 = instance_create_layer(x+32, y+32, "Instances", ofinalboss_attack_rock12);
	attack1.image_angle = image_angle;
	attack2.image_angle = image_angle;
	attack3.image_angle = image_angle;
	var attack4 = instance_create_layer(x-32, y-32, "Instances", ofinalboss_attack_rock12);
	var attack5 = instance_create_layer(x, y-32, "Instances", ofinalboss_attack_rock12);
	var attack6 = instance_create_layer(x+32, y-32, "Instances", ofinalboss_attack_rock12);
	attack4.image_angle = image_angle + 90;
	attack5.image_angle = image_angle + 90;
	attack6.image_angle = image_angle + 90;
	var attack7 = instance_create_layer(x-32, y-32, "Instances", ofinalboss_attack_rock12);
	var attack8 = instance_create_layer(x-32, y, "Instances", ofinalboss_attack_rock12);
	var attack9 = instance_create_layer(x-32, y+32, "Instances", ofinalboss_attack_rock12);
	attack7.image_angle = image_angle + 180;
	attack8.image_angle = image_angle + 180;
	attack9.image_angle = image_angle + 180;
	var attack10 = instance_create_layer(x-32, y+32, "Instances", ofinalboss_attack_rock12);
	var attack11 = instance_create_layer(x, y+32, "Instances", ofinalboss_attack_rock12);
	var attack12 = instance_create_layer(x+32, y+32, "Instances", ofinalboss_attack_rock12);
	attack10.image_angle = image_angle + 270;
	attack11.image_angle = image_angle + 270;
	attack12.image_angle = image_angle + 270;
}


if animation_end()
{instance_destroy();}