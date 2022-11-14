
function NPC_NPC99_dialog(argument0)
{
	///@arg dilog_count
	var diacount = argument0;
	var randia = irandom(2);
	text = ""
	
	if diacount == 0
	{
		text = "마침내 이곳까지 당도했는가";
		global.NPC99_dialog += 1;
		global.mainstream = 60;
	}
	
	//사망횟수로 분기
	
	
	if diacount == 1	&& global.Deathcount_total >=1
	{
		text = "유감이구나 선택받은자여";
		global.NPC99_dialog += 1;
	}
	
	if diacount == 2
	{
		text = "죽음을 경험한자는";
		global.NPC99_dialog += 1;
	}
	
	if diacount == 3
	{
		text = "내 앞에 설 자격이 없다";
		global.NPC99_dialog += 1;
	}
	
	if diacount == 4
	{
		text = "사라져라";
		oPlayer.state = "Death"
		alarm[2] = 20;
		act_count = 30;
	}
	
	
	//0회사망으로 도달
	
	if diacount == 1	&& global.Deathcount_total ==0
	{
		text = "무엇때문에 이곳에 왔는지는 알고있다";
		global.NPC99_dialog = 10;
	}
	
	if diacount == 10
	{
		text = "하지만 그것은 필요한 일이다";
		global.NPC99_dialog += 1;
	}
	if diacount == 11
	{
		text = "이 세계를 유지하기 위함인것을";
		global.NPC99_dialog += 1;
	}
	
	if diacount == 12
	{
		text = "지금의 너는 이해하지 못하겠지";
		global.NPC99_dialog += 1;
	}
	
	if diacount == 13
	{
		text = "나의 임무는 여기서 너를 막아서는것";
		global.NPC99_dialog += 1;
	}
	
	if diacount == 14
	{
		text = "자 와라";
		global.NPC99_dialog += 1;
	}
	
	if diacount == 15
	{
		text = "이번 이야기의 막을 내리도록 하지"
		global.NPC99_dialog = 99;
	}
	
	if diacount == 100
	{
		text = "하하...";
		global.NPC99_dialog += 1;
		global.mainstream = 70;
	}
	if diacount == 101
	{
		text = "나의 이야기가 끝이나는군...";
		global.NPC99_dialog += 1;
	}
	if diacount == 102
	{
		text = "그리고 너의 이야기 또한";
		global.NPC99_dialog += 1;
	}
	if diacount == 103
	{
		text = "그 끝이 얼마 남지 않았다";
		global.NPC99_dialog += 1;
	}
	if diacount == 104
	{
		text = "집으로 돌아가거라";
		global.NPC99_dialog += 1;
	}
	if diacount == 105
	{
		text = "그리고 이 세상의 진실을 직접 목격하도록";
		global.NPC99_dialog += 1;
	}
	if diacount == 106
	{
		text = "이것으로 나의 소명은 끝이다";
		global.NPC99_dialog = 110;
		global.mainstream = 71;
		act_count = 500;
		act_switch = false;
	}
	
	
	
	return text;
}