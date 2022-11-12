// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function book_text_02(line_num)
{
	var text_line01 = "기록일지 : 78호";
	var text_line02 = "솔직히 말해서 충격이 크다"
	var text_line03 = "이 세계에 살아있는것은 나 혼자뿐이고";
	var text_line04 = "내가 행동한건 과거의 내가만든 각본이며";
	var text_line05 = "여러번 세계를 구하고 다시 부숴왔다는것을";
	var text_line06 = "과거의 나는 대체 무슨생각인걸까?";
	
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