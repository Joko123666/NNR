  
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
		if global.NPC18_dialog >= 4
		{text = "또만났구나?";}
		else
		{text = "처음보는구나";}
		
		global.NPC28_dialog += 1;
	}
	
	if diacount == 2
	{
		if global.NPC18_dialog >= 4
		{text = "계속해서 여행을 다니는중인데";}
		else
		{text = "나는 여행을 돌아다니는중인데";}
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
		text = "이주변은 통제구역이 너무 많아서 불만이야";
		global.NPC28_dialog += 1;
	}
	
	if diacount == 6
	{
		text = "빨리 해결되지 않으려나?";
	}
	
	if diacount <= 6	&& global.mainstream >= 41
	{
		text = "안녕, 여행자친구";
		global.NPC28_dialog = 7;
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
		instance_create_layer(x + 24*image_xscale, y - 32, "Instances", Item_firework);
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
	
	if global.mainstream >= 51	&& global.NPC28_dialog <= 20
	{
		if global.NPC18_dialog < 2 && global.NPC28_dialog < 2
		{text = "어머?, 처음 보는구나";}
		else
		{text = "다시만나 반갑네~";}
		global.NPC28_dialog = 21;
		
	}
	
	if diacount == 21
	{
		text = "이곳에는 어쩌다 오게된건데";
		global.NPC28_dialog += 1;
	}
	
	if diacount == 22
	{
		text = "안쪽만 잠깐 보고가면 되는데";
		global.NPC28_dialog += 1;
	}
	
	if diacount == 23
	{
		text = "지금은 위험하다면서 가로막더라고";
		global.NPC28_dialog += 1;
	}
	
	if diacount == 24
	{
		text = "그래서 밖에서 기다리고 있어";
		global.NPC28_dialog += 1;
	}
	
	if diacount == 25
	{
		text = "여기까지 왔는데 뭐라도 보고가야지";
		global.NPC28_dialog += 1;
	}
	
	if diacount == 26
	{
		text = "아, 그렇지!";
		global.NPC28_dialog += 1;
	}
	
	if diacount == 27
	{
		text = "기왕 이렇게 된거";
		global.NPC28_dialog += 1;
	}
	
	if diacount == 28
	{
		text = "나한테 기술을 배워보지 않을래?";
		global.NPC28_dialog += 1;
	}
	
	if diacount == 29
	{
		text = "내 여행의 특기야";
		global.NPC28_dialog += 1;
	}
	
	if diacount == 30
	{
		text = "위험한 몬스터를 만났을때";
		global.NPC28_dialog += 1;
	}
	
	if diacount == 31
	{
		text = "춤추듯이 우아하게";
		global.NPC28_dialog += 1;
	}
	
	if diacount == 32
	{
		text = "스텝을 밟으면서 피하는거야";
		global.NPC28_dialog += 1;
	}
	
	if diacount == 33
	{
		text = "짧은 동작이지만";
		global.NPC28_dialog += 1;
	}
	
	if diacount == 34
	{
		text = "체력을 적게쓰기 때문에 금방 다시쓸수 있지";
		global.NPC28_dialog += 1;
	}
	
	if diacount == 35
	{
		text = "짠짠짠!";
		global.NPC28_dialog += 1;
		global.Player_moveskill = 4;
		oPlayer.moveskill_set = 4;
		global.moveskill04 = true;
		audio_play_sound(SE_system03, 1, 0);
		skillget_effect(oPlayer.x, oPlayer.y - 12, 4);
	}
	
	if diacount == 36
	{
		text = "그럼 잘 활용해줘~";
		global.NPC28_dialog += 1;
	}
	
	if diacount == 37
	{
		text = "언제 들어갈수 있는걸까나~";
	}
	
	if global.mainstream >= 60
	{
		text = "마참내!";
		global.NPC28_dialog = 40;
	}
	
	if diacount == 40
	{
		text = "이제야 안쪽을 볼수 있게된거네!";
		global.NPC28_dialog += 1;
	}
	
	if diacount == 41
	{
		text = "얼른 보고 다음장소로 이동해야지~";
		global.NPC28_dialog += 1;
	}
	
	
	return text;
}