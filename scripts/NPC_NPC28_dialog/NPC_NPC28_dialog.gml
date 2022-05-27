
function NPC_NPC28_dialog(argument0)
{
	///@arg dilog_count
	var diacount = argument0;
	text = ""
	
	if diacount == 0
	{
		text = "어머, 안녕";
		global.NPC28_dialog += 1;
	}
	
	if diacount == 1
	{
		text = "또만났구나?";
		global.NPC28_dialog += 1;
	}
	
	if diacount == 2
	{
		text = "계속해서 여행을 다니는중인데";
		global.NPC28_dialog += 1;
	}
	
	if diacount == 3
	{
		text = "전송장치가 운행을 중단했지 뭐야?";
		global.NPC28_dialog += 1;
	}
	
	if diacount == 4
	{
		text = "운행을 다시 시작할때까지 여기서 기다리려고";
		global.NPC28_dialog += 1;
	}
	
	if diacount == 5
	{
		text = "이주변은 위험하고 볼게 별로 없어서 불만이야";
		global.NPC28_dialog += 1;
	}
	
	if diacount == 6
	{
		text = "빨리 해결되지 않으려나?";
	}
	
	if diacount <= 6	&& global.mainstream >= 41
	{
		text = "안녕, 여행자친구";
		global.NPC28_dialog += 1;
	}
	
	if diacount == 7
	{
		text = "이변이 해결되서 전송장치 운행을 재개한대";
		global.NPC28_dialog += 1;
	}
	
	if diacount == 8
	{
		text = "들리는 소문으로는 길드원 한명이 혼자서 해결했다는데";
		global.NPC28_dialog += 1;
	}
	
	if diacount == 9
	{
		text = "어떤사람인지 정말 궁금한걸?";
		global.NPC28_dialog += 1;
	}

	if diacount == 10
	{
		text = "나는 조만간 이곳을 떠날 예정이야";
		global.NPC28_dialog += 1;
	}
	
	if diacount == 11
	{
		text = "이곳에서 시간을 때우려고 산 아이템이 있는데";
		global.NPC28_dialog += 1;
	}
	
	if diacount == 12
	{
		text = "필요하면 너한테 줄게";
		global.NPC28_dialog += 1;
	}
	
	if diacount == 13
	{
		text = "이동할땐 짐만 되니까 부담없이 받아두렴";
		global.NPC28_dialog += 1;
	}
	
	if diacount == 14
	{
		text = "사용하면 날아가서 폭팔하는 작은 폭약인데";
		global.NPC28_dialog += 1;
	}
	
	if diacount == 15
	{
		text = "시제품을 조금 파는걸 전부 사놨거든";
		global.NPC28_dialog += 1;
	}
	
	if diacount == 16
	{
		text = "그럼 연이 닿으면 다음번에 또 만나자";
	}
	
	return text;
}