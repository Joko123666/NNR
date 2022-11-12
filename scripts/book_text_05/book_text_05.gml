// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function book_text_05(line_num)
{
	var text_line01 = "기록일지 : 1064호";
	var text_line02 = "이번 기억의 갱신에는 한시간정도가 걸렸다"
	var text_line03 = "기억을 토대로 몇가지 조취를 취해놨지만";
	var text_line04 = "완전히 부작용을 없애는데는 아직 모자르다";
	var text_line05 = "그런데 이런 생각이 들기도 한다";
	var text_line06 = "어차피 죽지않는몸인데 그정도는 상관없지않나?";
	
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