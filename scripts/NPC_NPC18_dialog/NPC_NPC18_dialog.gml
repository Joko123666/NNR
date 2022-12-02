
function NPC_NPC18_dialog(argument0)
{
	///@arg dilog_count
	var diacount = argument0;
	text = ""
	
	if diacount == 0
	{
		text = "어머, 안녕";
		global.NPC18_dialog += 1;
	}
	
	if diacount == 1
	{
		text = "나는 여행을 좋아해서 이곳저곳을 돌아다니는 중이야";
		global.NPC18_dialog += 1;
	}
	

	if diacount == 2 
	{
		text = "이 마을은 참 평화로워";
		global.NPC18_dialog += 1;
	}
	
	if diacount == 3
	{
		text = "휴양지로는 그만인것 같아";
		global.NPC18_dialog += 1;
	}
	
	if diacount == 4  
	{
		text = "나는 쉬다가 천천히 출발 할 생각이야";
		global.NPC18_dialog += 1;
	}
	
	if diacount == 5  
	{
		text = "너도 즐거운 여행을 하기를 바랄게";
	}
	
	
	return text;
}