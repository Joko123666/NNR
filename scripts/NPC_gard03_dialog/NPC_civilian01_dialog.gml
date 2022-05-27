// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function NPC_civilian01_dialog()
{
	///@arg dilog_count
	var dialog_count = irandom(3);
	
	if dialog_count == 0
	{
		text = "안녕하세요!!!!";
		dialog_count = irandom(3);
	}
	
	if dialog_count == 1
	{
		text = "안녕안녕안녕하세요~~!!!!";
		dialog_count = irandom(3);
	}
	
	if dialog_count == 2
	{
		text = "너무너무안녕하세요~~~!!!";
		dialog_count = irandom(3);
		
	}
	
	if dialog_count == 3
	{
		text = "환영해요~~~!!!!";
		dialog_count = irandom(3);
	}
	
	return text;
}