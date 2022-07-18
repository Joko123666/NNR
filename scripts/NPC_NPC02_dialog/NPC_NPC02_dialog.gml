// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function NPC_NPC02_dialog(argument0)
{
	///@arg dilog_count
	var diacount = argument0;
	text = "";
	
	if diacount == 0
	{
		text = "안녕? 어서와";
		dialog_count +=1	
		global.NPC2_dialog += 1;
		global.UItext_show = true;
	}
	
	if diacount == 1
	{
		text = "길드에 볼일이 있다면 접수대에 말을 걸어봐";
		dialog_count +=1
		global.NPC2_dialog += 1;
	}
	
	if diacount == 2
	{
		text = "아니면, 나한테 볼일 있니?";
		dialog_count +=1
		global.NPC2_dialog += 1;
		{if global.mainstream != 15 {dialog_endswitch = true;global.UItext_show = false;}  }
	}
	
	if diacount == 3  && global.mainstream != 15
	{
		text = "나한테 볼일 있니?";
		if global.mainstream >= 16 {global.NPC2_dialog =9;}
		else {dialog_endswitch = true; global.UItext_show = false;}
	}
	
	if diacount == 3 && global.mainstream == 15 && global.Player_item == "Questmail"
	{
		text = "어머, 이 편지를 나한테 주는거니?";
		global.Player_item = "empty";
		
		dialog_count = 4;
		global.NPC2_dialog = 4;
		global.mainstream = 16;
		global.mainquest[3] = 2;
		global.UItext_show = true;
	}
	
	if diacount == 4
	{
		text = "네가 아니라 헤롤드씨가 보낸거라고?";
		dialog_count +=1
		global.NPC2_dialog += 1;
	}
	
	if diacount == 5
	{
		text = "또 그사람이구나";
		dialog_count +=1
		global.NPC2_dialog += 1;
	}
	
	if diacount == 6
	{
		text = "편지는 내가 알아서 처리할게";
		dialog_count +=1
		global.NPC2_dialog += 1;
	}
	
	if diacount == 7
	{
		text = "너도 이런 심부름은 받아주지 말아줘";
		dialog_count +=1
		global.NPC2_dialog += 1;
	}
	
	if diacount == 8
	{
		text = "그사람도 참...";
		dialog_endswitch = true;
		global.UItext_show = false;
	}
	
	if diacount == 9
	{
		text = "요즘은 쓸데없는 편지가 없어서 평화롭네";
		dialog_endswitch = true;
		global.UItext_show = false;
	}
	
	return text;
}