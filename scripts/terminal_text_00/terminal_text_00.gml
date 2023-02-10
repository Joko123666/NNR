// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function terminal_text_00(line_num)
{
	var text_line01 = ""
	text_line01 = "옛날에 목숨을 관리하던 신이 있었다";
	var text_line02 = "영생을 탐내던 왕이 신살을 꾀했고"
	var text_line03 = "용사인 나를 보내 결국 신을 죽였다";
	var text_line04 = "하지만 신과 함께 다른 모든 사람이 죽었고";
	var text_line05 = "나는 신의 저주를 받아 영원히 죽지 않게 되었다";
	var text_line06 = "세계에 나홀로 남겨진것이다";
	
	
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