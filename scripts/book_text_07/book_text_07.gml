// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function book_text_07(line_num)
{
	var text_line01 = "기록일지 : 4754호";
	var text_line02 = "이번 세계는 사람들이 따듯한 세계였다"
	var text_line03 = "관리역과 함께 움직임이 멈췄을때는 패닉이였다";
	var text_line04 = "시간이 지난뒤 저장소를 발견해서 다행이지";
	var text_line05 = "바로 저장소로 향했다면 망설임 없이 종료를 선택했을것이다";
	var text_line06 = "이 기록을 읽었다면 너무 좋은세계는 지양해주길 바란다";
	
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