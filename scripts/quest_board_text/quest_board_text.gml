
function quest_board_text(argument0)
{
	///@arg quest_number
	
	
	if global.language == "Korean"
	{
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
	
		if argument0 == "main006"
		{	return "동쪽의 마을로";	}
	
		if argument0 == "main011"
		{	return "병영에서 대화";	}
	
		if argument0 == "main012"
		{	return "광산 조사";	}
	
		if argument0 == "main013"
		{	return "바위를 제거";	}
	
		if argument0 == "main014"
		{	return "협회에 방문";	}
	
		if argument0 == "main015"
		{	return "새로운 이상조사";}
	
		if argument0 == "main016"
		{	return "병영에 보고";}
	
		if argument0 == "main017"
		{	return "이상해결 보고";}
	
		if argument0 == "main020"
		{	return "전송장치 작동";}
	
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
		if argument0 == "side004"
		{
			return "목걸이 회수";
		}
		#endregion
	}
	
	if global.language == "English"
	{
		#region Mainquest
		if argument0 == "main001"
		{	return "Find weapon";	}
	
		if argument0 == "main002"
		{	return "Take off nest";	}
	
		if argument0 == "main003"
		{	return "Deliver mail";	}
	
		if argument0 == "main004"
		{	return "Investigate case";	}
	
		if argument0 == "main005"
		{	return "Investigate cave";	}
	
		if argument0 == "main006"
		{	return "To east village";	}
	
		if argument0 == "main011"
		{	return "To barracks";	}
	
		if argument0 == "main012"
		{	return "Investigate mine";	}
	
		if argument0 == "main013"
		{	return "Destroy rock";	}
	
		if argument0 == "main014"
		{	return "Visit headquarter";	}
	
		if argument0 == "main015"
		{	return "Investigate case";}
	
		if argument0 == "main016"
		{	return "Return to barracks";}
	
		if argument0 == "main017"
		{	return "report Investigate";}
	
		if argument0 == "main020"
		{	return "Activate teleporter";}
	
		#endregion
	
		#region Subquest
	
		if argument0 == "side001"
		{
			return "Bring berry";
		}
		if argument0 == "side002"
		{
			return "Hunting monsters";
		}
		if argument0 == "side003"
		{
			return "Withdraw red crystal";
		}
		if argument0 == "side004"
		{
			return "Withdraw necklace";
		}
		#endregion
	}
}