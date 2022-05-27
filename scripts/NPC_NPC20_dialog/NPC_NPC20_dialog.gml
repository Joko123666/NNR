
function NPC_NPC20_dialog(argument0)
{
	///@arg dilog_count
	var diacount = argument0;
	text = ""

	
	if diacount == 0
	{
		text = "당신은 외지인인가";
		global.NPC20_dialog += 1;
	}
	
	if diacount == 1
	{
		text = "이곳은 처음오나?";
		global.NPC20_dialog += 1;
	}
	

	if diacount == 2 
	{
		text = "여기는 절벽의도시 제루루크다";
		global.NPC20_dialog += 1;
	}
	
	if diacount == 3
	{
		text = "적광석이 나오지만 보다시피 척박해서";
		global.NPC20_dialog += 1;
	}
	
	if diacount == 4  
	{
		text = "광부와 이곳을 지키는 병사들";
		global.NPC20_dialog += 1;
	}
	
	if diacount == 5
	{
		text = "그외의 사람이 거의 살지 않는곳이지";
		global.NPC20_dialog += 1;
	}
	
	if diacount == 6  
	{
		text = "편한곳은 아니지만 우리에겐 고향이다";
		global.NPC20_dialog += 1;
	}
	
	
	if diacount == 7  
	{
		text = "천천히 둘러보다 가라고";
	}
	
	
	return text;
}