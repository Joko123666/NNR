// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function book_text_01(line_num)
{
	var text_line01 = ""
	text_line01 = "기록일지 : 1호";
	var text_line02 = "*규칙을 위해 작성한 책, 말소하지 말것*"
	var text_line03 = "- 이곳은 감상을 적는장소로 활용할것";
	var text_line04 = "- 모든 기록이 찼을경우 다른 기록을 지울것";
	var text_line05 = "- 일지중 가장 높은숫자에 1을 더해서 기록할것";
	var text_line06 = "- 다시시작하기 전에 반드시 은폐할것";
	
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