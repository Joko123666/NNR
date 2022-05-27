
if !instance_exists(other) exit;
with (other) 
{
	Exp +=10;
	if (Exp >= maxExp)
	{
		level ++;
		Exp = Exp - maxExp;
		maxExp = maxExp + maxExp*0.6;
		maxHP += 5;
		HP = maxHP;
		STR += 2;
	}
	
}
instance_destroy();