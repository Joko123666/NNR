if animation_end()
{
	instance_destroy();
}

if image_alpha >0
{
	image_alpha -= 0.04;
}
else
{
	instance_destroy();
}