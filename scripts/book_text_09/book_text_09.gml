// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function book_text_09(line_num)
{
	var text_line01 = "기록일지 : 9999호";
	var text_line02 = "이게 아마도 정식으론 마지막 기록이 될것같다"
	var text_line03 = "더이상 정신을 제대로 유지할 자신이 없어서";
	var text_line04 = "이번을 마지막으로 기록장치와 저장소를 멈췄다";
	var text_line05 = "간략한 정보만을 비석에 새겨 남겨놨으니";
	var text_line06 = "내가 아니게된 내가 잘 활용해주길 바란다";
	
	if line_num == 1
	{return text_line01;}
	if line_num == 2
	{return text_line02;}
	if line_num == 3
	{return text_line03;}
	if line_num == 4
	{return text_line04;}
	if line_num == 5
	{return text_line05;}
	if line_num == 6
	{return text_line06;}
}