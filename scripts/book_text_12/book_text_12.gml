// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function book_text_12(page_num, line_num)
{
	var text_line01 = ".";
	var text_line02 = "."
	var text_line03 = ".";
	var text_line04 = ".";
	var text_line05 = ".";
	var text_line06 = ".";
		
	if page_num == 1
	{
		var text_line01 = ".";
		var text_line02 = "."
		var text_line03 = "이야기 장치 재기동을 위한 프로세스";
		var text_line04 = "이후에 서술된 순서대로 진행할것";
		var text_line05 = ".";
		var text_line06 = ".";
	}
	
	if page_num == 2
	{
		var text_line01 = ".1.";
		var text_line02 = "3개의 구슬을 돌려놓을것"
		var text_line03 = "관리자의 작동이 정지되면서";
		var text_line04 = "마을의 저장장치가 변형되었을것이다";
		var text_line05 = "각 장치에 구슬을 집어넣을것";
		var text_line06 = "구슬을 넣으면 시스템이 재시작될것이다";
	}
	
	if page_num == 3
	{
		var text_line01 = ".2.";
		var text_line02 = "구슬을 끼워넣은뒤"
		var text_line03 = "일반 주민들을 재작동시킬것";
		var text_line04 = "재작동 시킨 뒤";
		var text_line05 = "말을 걸어 점검을 해보는것을 추천함";
		var text_line06 = "대부분 초기대사를 말할것이다";
	}
	
	if page_num == 4
	{
		var text_line01 = ".3.";
		var text_line02 = "위의 과정을 모두 완료한뒤"
		var text_line03 = "관리자가 있던곳으로 돌아가서";
		var text_line04 = "관리자를 재기동 시킬것";
		var text_line05 = "위의 과정이 완료되지 않았다면";
		var text_line06 = "재기동 되지 않을것이다";
	}
	
	if page_num == 5
	{
		var text_line01 = ".4.";
		var text_line02 = "재기동시킨 관리자에게 말을걸어"
		var text_line03 = "관리자에게 인증을 받은 뒤";
		var text_line04 = "이곳으로 돌아와서";
		var text_line05 = "기억소거장치를 가동할것";
		var text_line06 = "이상이다";
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