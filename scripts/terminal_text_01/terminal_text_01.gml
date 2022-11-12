// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function terminal_text_01(line_num)
{
	var text_line01 = ""
	text_line01 = "이곳을 찾은 나를 위해 남김";
	var text_line02 = "이 저장소의 안과 밖에 지금까지의 기록과"
	var text_line03 = "자신에 대한 역사와 감정들이 기록 되어있었음";
	var text_line04 = "너무 많은 내용은 결정을 내리는데 필요 없다고 판단";
	var text_line05 = "모든 저장장치를 정지시키도록 했다";
	var text_line06 = "일부 기록은 주거장소의 지하에 남김";
	
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