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
	}
	
	if page_num == 2
	{
		var text_line01 = "만들때의 텐션을 항상";
		var text_line02 = "같은정도로 유지할수 있으면 좋겟지만"
		var text_line03 = "공교롭게도 사람이 그렇게는 되지 않다";
		var text_line04 = "정말 즐겁게 만들다가도";
		var text_line05 = "어느때는 다리 하나 뻗게 만드는것도";
		var text_line06 = "귀찮게 느껴지기도 하곤 한다";
	}
	
	if page_num == 3
	{
		var text_line01 = "그리고 항상 이상한데서 문제가 일어난다";
		var text_line02 = "특정조건을 채우면 말하게 만든 대사가"
		var text_line03 = "평소에는 막 튀어나오다가";
		var text_line04 = "오히려 특정조건을 채우면 다른말을 한다거나";
		var text_line05 = "들어가면 안되는곳에 들어가진다거나";
		var text_line06 = "가야하는곳에 갈수가 없다거나";
	}
	
	if page_num == 4
	{
		var text_line01 = "그리고 하나하나 나혼자 만드는게 사무친다";
		var text_line02 = "주민을 움직이게 하고 말하게하고"
		var text_line03 = "목소리도 정해주고 행동도 정해주고";
		var text_line04 = "관리자한테 맡겨놓고 움직이게 해보고";
		var text_line05 = "그리고 이상하면 다시 건드려보고";
		var text_line06 = "안되면 다음으로 미뤄놓고 까먹는다";
	}
	
	if page_num == 5
	{
		var text_line01 = "어차피 시간은 많으니까 적당히 하고있지만";
		var text_line02 = "가끔은 허공에 소리를 지르거나"
		var text_line03 = "이렇게 글로 써서 표현하면 마음이 좀 낫다";
		var text_line04 = "여기까지만 써놓을까";
		var text_line05 = "더 이어서 쓸수도 있으니까 남겨놔야지";
		var text_line06 = ".";
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