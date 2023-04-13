
function NPC_end_dialog(argument0)
{
	///@arg dilog_count
	var diacount = argument0;
	//메인 스트림에 따른 대사 출력 결정
	text = "";
	
	//텍스트 파일 호출
	
if global.language == "Korean"
{	
	if diacount == 0
	{
		text = "시스템을 재기동합니다";
	}
	if diacount == 1
	{
		text = "안녕, 이드?";
	}
	if diacount == 2
	{
		text = "오류발생, 시스템을 초기화합니다";
	}
	if diacount == 3
	{
		text = "이...드...";
	}
	if diacount == 4
	{
		text = "어서 오십시오.";
	}
	if diacount == 5
	{
		text = "아무 이상 없습니다!";
	}
	if diacount == 6
	{
		text = "도움이 필요하면 말씀해주세요";
	}
}

if global.language == "English"
{	
	if diacount == 0
	{
		text = "Restart the system.";
	}
	if diacount == 1
	{
		text = "Hello Ed?";
	}
	if diacount == 2
	{
		text = "Error, Reset the system.";
	}
	if diacount == 3
	{
		text = "E...d...";
	}
	if diacount == 4
	{
		text = "Welcome.";
	}
	if diacount == 5
	{
		text = "Everything is fine!";
	}
	if diacount == 6
	{
		text = "Please tell me if you need help.";
	}
}
	
	return text;
}