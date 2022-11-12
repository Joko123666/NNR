// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function book_text_03(line_num)
{
	var text_line01 = "기록일지 : 243호";
	var text_line02 = "이번 세계는 끝내주는군"
	var text_line03 = "기록일지를 살펴보면 몇대에 걸쳐서 만든듯 한데";
	var text_line04 = "나 자신에게 감사한다고";
	var text_line05 = "나는 너무 만족스러웠으니까";
	var text_line06 = "이대로 손 안대고 그대로 남겨도 좋을것같다";
	
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