// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function NPC_NPC12_dialog(argument0)
{
	///@arg dilog_count
	var diacount = argument0;
	//메인 스트림에 따른 대사 출력 결정
	if global.mainstream != 1
	{diacount = irandom(3);}
	if global.mainstream == 12
	{diacount = 4;}
	text = ""
	
	if diacount == 0
	{
		text = "바레타씨는 오늘도 아름다워라";
	}
	
	if diacount == 1
	{
		text = "2층은 여행자들이 머무는 여관이야";
	}
	
	if diacount == 2
	{
		text = "길드에 가끔씩 유령이 나온다는 모양이야";
	}
	
	if diacount == 3  
	{
		text = "전리품을 길드에서 골드로 바꿀수 있어";
	}
	
	if diacount == 4
	{
		text = "헤롤드씨가 무릎을 다쳐서 은퇴한다는 모양이야";
	}
	
	return text;
}