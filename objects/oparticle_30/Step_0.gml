act_count = count_decrease(act_count, 1, 0);
if act_count<=0
{
	if image_alpha >0
	{
		image_alpha -= 0.04;
		image_angle += angspd;
	}
	else
	{
		instance_destroy();
	}
}