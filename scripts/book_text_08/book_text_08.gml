// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function book_text_08(line_num)
{
	var text_line01 = "기록일지 : 6038호";
	var text_line02 = "아마도 나름대로의 기록과 기억이 쌓여서겠지만"
	var text_line03 = "기록을 보건데 최근의 세계는 무난하게 만들어진 모양이다";
	var text_line04 = "이대로 무난함만 반복하는것에 의미가 있는것일까?";
	var text_line05 = "일단은 나도 무난한걸 만들고는 있지만";
	var text_line06 = "고민은 끝나질 않는다...";
	
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