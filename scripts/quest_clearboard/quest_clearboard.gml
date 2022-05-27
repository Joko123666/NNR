// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function quest_clearboard(argument0)
{
	///@arg QuestNum
	var quest_name = argument0
	
	if global.quest_stack[1] == quest_name
	{global.quest_stack[1] = "empty";}
	else if global.quest_stack[2] == quest_name
	{global.quest_stack[2] = "empty";}
	else if global.quest_stack[3] == quest_name
	{global.quest_stack[3] = "empty";}

}