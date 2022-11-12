// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function book_text_04(line_num)
{
	var text_line01 = "기록일지 : 443호";
	var text_line02 = "저장소에서 기억을 이어받고 바로 적는다"
	var text_line03 = "아무래도 기억을 이어받고 잠시 기절한 모양이다";
	var text_line04 = "과거의 기억을 한번에 받아쓰는데에 무리가 가나?";
	var text_line05 = "이번만의 문제일수 있으니 기록에 남겨놓는다";
	var text_line06 = "다음세계의 내가 조취를 취했으면 한다";
	
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