if animation_end()
{
	instance_destroy();
}

if image_alpha >0
{
	image_alpha -= 0.02;
}
else
{
	instance_destroy();
}