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
	quest_clearboard("main001");
	quest_clearboard("main002");
	quest_clearboard("main003");
	quest_clearboard("main004");
	quest_clearboard("main005");
	quest_clearboard("main006");
	quest_clearboard("main011");
	quest_clearboard("main012");
	quest_clearboard("main013");
	quest_clearboard("main014");
	quest_clearboard("main015");
	quest_clearboard("main016");
	quest_clearboard("main017");
}