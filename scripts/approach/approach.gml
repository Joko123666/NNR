// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function approach(argument0, argument1, argument2)
{
	///@arg current_value
	///@arg target_value
	///@arg change_amount
	var current_value = argument0;
	var target_value = argument1;
	var change_amount = argument2;
	
	if current_value < target_value
	{
		current_value += change_amount;
		current_value = min(current_value, target_value);
	}
	else
	{
		current_value -= change_amount;
		current_value = max(current_value, target_value);
	}
	
return current_value;
}