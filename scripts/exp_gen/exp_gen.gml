
function exp_gen(argument0)
{
	///arg Exp
	var Exp = argument0;
	
	for (i = Exp; i>=0 ; i-- )
	{
		if i >=10
		{
			instance_create_layer(x+irandom_range(-4, 4), y + random_range(-4, 4), "Effects", oExp10);
			i-=9;
		}
		else
		{
			instance_create_layer(x+irandom_range(-4, 4), y + random_range(-4, 4), "Effects", oExp);
		}
	}

}