
act_count = count_decrease(act_count, 1, 0);

if act_count <= 0 && y_point >= -540
{y_point--;}

if y_point <= -540
{act_count2++;}

if act_count2 >= 320
{
	load_game_defalt();
	game_restart();
}

if oPlayer.input.interaction	&& act_count <= 0
{
	
	if y_point > -540
	{y_point -= 40;}
	if y_point <= -540
	{
		y_point = -540;
		act_count2 += 300;
	}
}