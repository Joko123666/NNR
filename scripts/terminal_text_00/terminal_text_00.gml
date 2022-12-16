// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function terminal_text_00(line_num)
{
	var text_line01 = ""
	text_line01 = "만들어진 세계의 이야기의 끝을 본 나에겐";
	var text_line02 = "3가지 선택지가 있다"
	var text_line03 = "수면장치에서 잠시 잠을 자 선택을 미루거나";
	var text_line04 = "다시 기억을 지우고 새로운 삶을 살거나";
	var text_line05 = "몸을 완전히 분해시켜 죽은것과 다름없게 되는것";
	var text_line06 = "어느것을 고르던 책망하지 않는다";
	
	
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