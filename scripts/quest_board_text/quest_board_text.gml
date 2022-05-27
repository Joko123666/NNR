
function quest_board_text(argument0)
{
	///@arg quest_number
	
	#region Mainquest
	
	if argument0 == "main001"
	{	return "무기를 구하기";	}
	
	if argument0 == "main002"
	{	return "벌레둥지 처리";	}
	
	if argument0 == "main003"
	{	return "편지 전달하기";	}
	
	if argument0 == "main004"
	{	return "이상사태 조사";	}
	
	if argument0 == "main005"
	{	return "동굴안을 조사";	}
	
	if argument0 == "main011"
	{	return "병영에서 대화";	}
	
	if argument0 == "main012"
	{	return "광산 조사";	}
	
	if argument0 == "main013"
	{	return "협회에 방문";	}
	
	#endregion
	
	#region Subquest
	
	if argument0 == "side001"
	{
		return "덤불딸기 구하기";
	}
	if argument0 == "side002"
	{
		return "몬스터 사냥";
	}
	if argument0 == "side003"
	{
		return "적수정 회수";
	}
	
	#endregion
}