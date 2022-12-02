// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function quest_clearall()
{
	global.subquest[1] = 3;
	quest_clearboard("side001");
	global.subquest[2] = 3;
	quest_clearboard("side002");
	global.subquest[3] = 3;
	quest_clearboard("side003");
	global.subquest[4] = 3;
	quest_clearboard("side004");
}