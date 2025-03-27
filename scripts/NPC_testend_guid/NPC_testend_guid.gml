// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function NPC_testend_guid()
{
	///@arg dilog_count
	var dia_count = dialog_count;
	
	if dia_count == 0
	{
		text = "안녕하세요!!!!";
		dialog_count ++;
	}
	
	if dia_count == 1
	{
		text = "이번 테스트를 플레이 해주셔서 감사합니다!";
		dialog_count ++;
	}
	
	if dia_count == 2
	{
		text = "게임을 하면서 느낀 감상을 써주시면 도움이 됩니다";
		dialog_count ++;
	}
	
	if dia_count == 3
	{
		text = "옆쪽의 표지판에 상호작용을 해주시면 설문 페이지로 넘어갑니다";
		dialog_count ++;
	}
	
	if dia_count == 4
	{
		text = "그러면 다음에는 완성된 게임을 기대해주세요!";
	}

	
	return text;
}