// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function terminal_text_02(line_num)
{
	var text_line01 = ""
	text_line01 = "이 세계는 사실 과거의 내가 만들어낸것이다";
	var text_line02 = "과거, 죽지않는 저주를 받은 나는"
	var text_line03 = "완전한 가공의 세계를 만들고";
	var text_line04 = "나 자신의 기억을 지우고 그곳에 돌려놓아";
	var text_line05 = "나 대신 세계를 움직일 관리자를 놓고";
	var text_line06 = "마치 처음 이 세계에 태어난 양 행동했다";
	
	
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