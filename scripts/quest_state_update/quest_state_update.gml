// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function quest_state_update(quest_baordx)
{
	if quest_baordx == "main001"
		{return global.mainquest[1];}
	if quest_baordx == "main002"
		{return global.mainquest[2]}
	if quest_baordx == "main003"
		{return global.mainquest[3]}
	if quest_baordx == "main004"
		{return global.mainquest[4]}
	if quest_baordx == "main005"
		{return global.mainquest[5]}
	if quest_baordx == "main006"
		{return global.mainquest[6]}
		
		
	if quest_baordx == "sub001"
		{return global.subquest[1]}
	if quest_baordx == "sub002"
		{return global.subquest[2]}	
	
}