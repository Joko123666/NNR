image_angle += angspd;

if image_alpha > 0.4
{
	image_alpha -= 0.04;
	instance_create_depth(x, y, 2, oparticle_14_a);
}
else
{
	instance_destroy();
}