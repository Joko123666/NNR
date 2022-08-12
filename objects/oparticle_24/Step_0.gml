if act_count > 0
{act_count--;}
else
{
	if image_alpha >0
	{
		image_alpha -= 0.02;
		speed -= 0.01;
		image_angle += angspd;
	}
	else
	{
		instance_destroy();
	}
}
