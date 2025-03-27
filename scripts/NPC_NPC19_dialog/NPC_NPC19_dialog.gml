
function NPC_NPC19_dialog(argument0)
{
	///@arg dilog_count
	var diacount = argument0;
	text = ""
	
	if diacount == 0
	{
		text = "어머, 안녕";
		global.NPC19_dialog += 1;
	}
	
	if diacount == 1
	{
		text = "나는 여행을 좋아해서 이곳저곳을 돌아다니는 중이야";
		global.NPC19_dialog += 1;
	}
	

	
	return text;
}