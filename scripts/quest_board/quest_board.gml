
function quest_board(argument0)
{
	///@arg QuestNum
	var quest_name = argument0
	
	if global.quest_stack[1] == "empty"
	{global.quest_stack[1] = quest_name;}
	else if global.quest_stack[2] == "empty"
	{global.quest_stack[2] = quest_name;}
	else if global.quest_stack[3] == "empty"
	{global.quest_stack[3] = quest_name;}

}