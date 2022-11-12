// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function book_text_80(line_num)
{
	var text_line01 = "바레타, 아름다운 그대에게";
	var text_line02 = "당신을 만나고 나의 세계는 빛나고있소"
	var text_line03 = "이 편지를 쓰며 그대를 생각하노니";
	var text_line04 = "그대역시 이 편지를 보며 나를 떠올린다면";
	var text_line05 = "이는 이미 연정과 같이 않을까 생각하오니";
	var text_line06 = "부디 나와 함께 걸어주지 않겠습니까?";
	
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