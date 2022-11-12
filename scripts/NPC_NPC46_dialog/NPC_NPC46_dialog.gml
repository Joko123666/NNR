
function NPC_NPC46_dialog(argument0)
{
	///@arg dilog_count
	var diacount = argument0;
	var randia = irandom(2);
	text = ""
	
	if diacount == 0
	{
		text = "어서오십시오 이드씨";
		global.NPC46_dialog += 1;
		global.UItext_show = true;
		global.mainstream = 45;
		dialog_endswitch = false;
	}
	
	if diacount == 1
	{
		text = "이곳에서 이상사태가 발생했다는 정보가 들어와";
		global.NPC46_dialog += 1;
	}
	
	if diacount == 2
	{
		text = "저희 길드의 조사원이 진위확인을 끝낸 상황입니다";
		global.NPC46_dialog += 1;
	}
	
	if diacount == 3
	{
		text = "이상을 먼저 전달해주신건 이곳의 관리인씨이니";
		global.NPC46_dialog += 1;
	}
	
	if diacount == 4
	{
		text = "그분께 자세한 설명을 들으시면 되겠습니다";
		global.NPC46_dialog += 1;
	}
	
	if diacount == 5
	{
		text = "또, 이드씨를 지원하기위해";
		global.NPC46_dialog += 1;
	}
	if diacount == 6
	{
		text = "상인분이 가판대를 설치하셨으니";
		global.NPC46_dialog += 1;
	}
	
	if diacount == 7
	{
		text = "필요한게 있으시면 이용 부탁드립니다";
		global.NPC46_dialog += 1;
	}
	
	if diacount == 8
	{
		text = "저희는 다른곳의 조사와 함께";
		global.NPC46_dialog += 1;
	}
	
	if diacount == 9
	{
		text = "텔레포터의 조정에 힘쓰고 있겠습니다";
		global.NPC46_dialog += 1;
	}
	
	if diacount == 10
	{
		text = "그럼 이곳의 이상해결을 부탁드립니다";
		global.NPC46_dialog += 1;
		dialog_endswitch = true;
	}
	
	

	if diacount == 11 && global.mainstream < 60
	{
		if randia == 0
		{text = "잘부탁드립니다 이드님";}
		if randia == 1
		{text = "필요한게 있으시면 언제든 돌아가실수 있습니다";}
		dialog_endswitch = true;
	}
	
	if diacount == 11 && global.mainstream >= 60
	{
		text = "어서오십시오 이드씨";
		global.NPC46_dialog += 1;
		global.UItext_show = true;
		dialog_endswitch = false;
	}
	
	if diacount == 12
	{
		text = "유적의 이상을 해결하고 오신거지요?";
		global.NPC46_dialog += 1;
	}
	
	if diacount == 13
	{
		text = "방금 순간이동본부에서 연락이 있었습니다";
		global.NPC46_dialog += 1;
	}
	
	if diacount == 14
	{
		text = "지금까지 반응이 없던 전송장치에서";
		global.NPC46_dialog += 1;
	}
	
	if diacount == 15
	{
		text = "빛이 나기 시작했다고 합니다";
		global.NPC46_dialog += 1;
	}
	
	if diacount == 16
	{
		text = "조속히 복귀해달라는 요청이 있습니다";
		global.NPC46_dialog += 1;
		dialog_endswitch = true;
	}
	
	if diacount == 17
	{
		if randia == 0
		{text = "어서 돌아가주시기 바랍니다";}
		if randia == 1
		{text = "저희는 물자를 정리하고 돌아가겠습니다";}
		dialog_endswitch = true;
	}
	
	
	
	return text;
}