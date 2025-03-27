
if global.mainstream >= 10
{
	steam_set_achievement("Finish_Tutorial");
}

if global.Player_sword == true
{
	{steam_set_achievement("Get_Sword");}
}

if global.attackskill02 == true	&& global.attackskill03 == true	&& global.attackskill04 == true	&& global.attackskill05 == true	&& global.attackskill06 == true
{
	{steam_set_achievement("Master_Attackskill");}
}

if global.last_dialog == 10
{
	{steam_set_achievement("End_Game");}
}