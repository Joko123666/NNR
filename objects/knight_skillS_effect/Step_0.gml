delete_count = count_decrease(delete_count, 1, 0)

if delete_count <=0
{
	if image_alpha >0
	{
		image_alpha -= 0.08;
	}
	else
	{
		instance_destroy();
	}
}