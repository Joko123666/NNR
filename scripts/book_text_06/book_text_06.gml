// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function book_text_06(line_num)
{
	var text_line01 = "기록일지 : 3648호";
	var text_line02 = "솔직히 충격이다"
	var text_line03 = "지금까지의 나의 노력은 무엇이였을까?";
	var text_line04 = "이것도 '나'의 노력이라는건 알겠지만";
	var text_line05 = "좀처럼 마음이 정리되지 않는다";
	var text_line06 = "조금 더 시간이 필요하다...";
	
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