if act_count >0
{act_count--;}

if global.mainstream < 34	&& place_meeting(x, y, oPlayer)	&& act_count <=0
{
	var text = instance_create_layer(x, y-12, "Effects", text_drawingob);
	if global.language == "Korean"
	{text.text = "바위로 길이 막혀있다";}
	if global.language == "English"
	{text.text = "Road is blocked by rocks";}
	var text_width = string_width(text.text);
	text.x -= text_width/2 + 4;
	act_count = 40;
	global.mainstream = 34;
	global.mainquest[12] = 3;		//퀘스트 진행도 갱신
	quest_clearboard("main012");			//퀘스트 보드에 퀘스트 갱신
	
	global.mainquest[13] = 1;		//퀘스트 진행도 갱신
	quest_board("main013");			//퀘스트 보드에 퀘스트 갱신
	audio_play_sound(SE_system07, 1, false);
}
	
if global.mainstream >= 35
{instance_destroy();}


//퀘스트 갱신 밀린거 이어서 할것