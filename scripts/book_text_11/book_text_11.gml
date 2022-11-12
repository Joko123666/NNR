// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function book_text_11(page_num, line_num)
{
	var text_line01 = ".";
	var text_line02 = "."
	var text_line03 = ".";
	var text_line04 = ".";
	var text_line05 = ".";
	var text_line06 = ".";
		
	if page_num == 1
	{
		var text_line01 = "제작 중간기록";
		var text_line02 = "세계를 만드는중 푸념하려고 이 글을 남긴다"
		var text_line03 = "혼자서 모든걸 다하는건 생각보다 지치는 일이다";
		var text_line04 = "여기 구석에 이런걸 남겨놓는정도는 상관없겠지";
		var text_line05 = "간간히 적는정도는 상관없겠지";
		var text_line06 = "누가 뭐라 하는것도 아니고";
		page_number++;
	}
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