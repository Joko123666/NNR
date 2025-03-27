
if global.quest_stack[1] != "empty" && global.quest_stack[2] != "empty" && global.quest_stack[3] != "empty"
	{global.quest_stack[4] = "full"}
else {global.quest_stack[4] = "empty"}

if global.subquest[2] == 1
{ 
	if global.root_item[1] >= 10	&& global.root_item[3] >= 2
	{global.subquest[2] = 2;}
}