
function NPC_NPC21_dialog(argument0)
{
	///@arg dilog_count
	var diacount = argument0;
	text = ""
	
	if diacount == 0
	{
		text = "무슨일이야 형씨";
		global.NPC21_dialog += 1;
	}
	
	if diacount == 1
	{
		text = "당신 외지인이지?";
		global.NPC21_dialog += 1;
	}
	

	if diacount == 2 
	{
		text = "헤헤헤, 마침 잘됬어";
		global.NPC21_dialog += 1;
	}
	
	if diacount == 3
	{
		text = "나한테 좋은 안건이 있어서 말이야";
		global.NPC21_dialog += 1;
	}
	
	if diacount == 4  
	{
		text = "별로 어려운일이 아니야";
		global.NPC21_dialog += 1;
	}
	
	if diacount == 5
	{
		text = "적광석중에 섞여나온다는 적수정석을 구했는데";
		global.NPC21_dialog += 1;
	}
	
	if diacount == 6  
	{
		text = "채광중에 적석골렘의 습격을 받아서";
		global.NPC21_dialog += 1;
	}
	
	
	if diacount == 7  
	{
		text = "그동안 캐놓은 적수정석을 전부 놓고 와버렸거든";
		global.NPC21_dialog += 1;
	}
	
	if diacount == 8
	{
		text = "아직까지 놈들이 바글거리는곳이라 당장은 갈수없고";
		global.NPC21_dialog += 1;
	}
	
	if diacount == 9  
	{
		text = "없어지는걸 기다리는 사이에 누가 주워가면 큰 손해거든";
		global.NPC21_dialog += 1;
	}
	
	if diacount == 10
	{
		text = "그러니까 그 사이에 캐놓은것만으로 좋으니까";
		global.NPC21_dialog += 1;
	}
	
	if diacount == 11
	{
		text = "적수정 자루를 회수해주지 않겠어?";
		global.NPC21_dialog += 1;
	}
	
	if diacount == 12
	{
		text = "회수해준다면 판매가의 절반을 넘겨줄게";
		global.NPC21_dialog += 1;
	}
	
	if diacount == 13
	{
		text = "댁한테도 좋은얘기지?";
		global.NPC21_dialog += 1;
	}
	
	if diacount == 14
	{
		text = "미리말해두지만 같이 하기로 한다음 번복하는건 안되";
		global.NPC21_dialog += 1;
	}
	
	if diacount == 15
	{
		text = "어때 함께 일을 하겠어?";
		global.NPC21_dialog += 1;
	}

	if diacount == 16
	{
		if global.quest_stack[4] == "empty"
		{
			quest_board("side003");
			text = "헤헤, 잘생각했어";
			global.NPC21_dialog += 1;
			global.quest001 = 1;
			global.subquest[3] = 1;
			dialog_count +=1
			audio_play_sound(SE_system07, 1, false);
		}
		else {text = "맡은 일이 너무 많지 않아?"}
		
	}
	
	if diacount == 17
	{
		text = "그럼 회수해서 돌아와줘";
		global.NPC21_dialog += 1;
	}
	
	if diacount == 18	&& global.Player_item != "Metalsack"
	{
		text = "위쪽길을 잘 찾아보라구";
	}
	
	if diacount == 18	&& global.Player_item == "Metalsack"
	{
		text = "가지고 돌아왔구만!";
		global.NPC21_dialog += 1;
	}
	
	if diacount == 19
	{
		text = "어서 나한테 주라고!";
		global.Player_item = "empty";
		global.NPC21_dialog += 1;
		global.subquest[3] = 3;
		quest_clearboard("side003");
		audio_play_sound(SE_system07, 1, false);
	}
	
	if diacount == 20
	{
		text = "헤헤헤 고마워~";
		global.NPC21_dialog += 1;
	}
	
	if diacount == 21
	{
		text = "...";
		global.NPC21_dialog += 1;
	}
	
	if diacount == 22
	{
		text = "......";
		global.NPC21_dialog += 1;
	}
	
	if diacount == 23
	{
		text = ".........";
		global.NPC21_dialog += 1;
	}
	
	if diacount == 24
	{
		text = "뭐야?";
		global.NPC21_dialog += 1;
	}
	
	if diacount == 25
	{
		text = "보수를 달라고?";
		global.NPC21_dialog += 1;
	}
	
	if diacount == 26
	{
		text = "아아~ 그러니까 이게 말이지";
		global.NPC21_dialog += 1;
	}
	
	if diacount == 27
	{
		text = "확실히 적수정은 괜찮은 가격에 팔리지만 말이야~";
		global.NPC21_dialog += 1;
	}
	
	if diacount == 28
	{
		text = "일단 팔리야 돈이 생기는거 아니겠어?";
		global.NPC21_dialog += 1;
	}
	
	if diacount == 29
	{
		text = "보수를 주고싶어도 당장은 돈이 없단 말이지";
		global.NPC21_dialog += 1;
	}
	
	if diacount == 30
	{
		text = "미안하다고 생각은 하는데 말이야";
		global.NPC21_dialog += 1;
	}
	
	if diacount == 31
	{
		text = "없는건 어쩔수 없다고";
		global.NPC21_dialog += 1;
	}
	
	if diacount == 32
	{
		text = "그래서 당장 돈을 줄수는 없지만";
		global.NPC21_dialog += 1;
	}
	
	if diacount == 33
	{
		text = "대신 물건으로 받는건 어때?";
		global.NPC21_dialog += 1;
	}
	
	if diacount == 34
	{
		text = "원래 주려고 한 가격보다 비싼 물건이라구~";
		global.NPC21_dialog += 1;
	}
	
	if diacount == 35
	{
		text = "(내가 원래 쓰던거긴 하지만)";
		global.NPC21_dialog += 1;
	}
	
	if diacount == 36
	{
		text = "그럼 그렇게 하는거로 되는거지?";
		global.NPC21_dialog += 1;
	}
	
	if diacount == 37
	{
		text = "자, 받으라구~";
		global.NPC21_dialog += 1;
		instance_create_depth(x + image_xscale*16, y - 48, 0, Item_necklace_speed2);
	}
	
	if diacount == 38
	{
		text = "예전에 행상인한테 꽤나 주고 산거야";
		global.NPC21_dialog += 1;
	}
	
	if diacount == 39
	{
		text = "이거 덕분에 저번 습격때 살아나올수 있었다는거지~";
		global.NPC21_dialog += 1;
	}
	
	if diacount == 40
	{
		text = "그래도 이번 이변도 해결되었다고 하니까";
		global.NPC21_dialog += 1;
	}
	
	if diacount == 41
	{
		text = "나보다는 당신이 더 잘 써줄거라 생각해";
		global.NPC21_dialog += 1;
	}
	
	if diacount == 42
	{
		text = "그럼 이걸로 이야기는 전부 끝난거지?";
		global.NPC21_dialog += 1;
	}
	
	if diacount == 43
	{
		text = "바이바이~";
		global.NPC21_dialog += 1;
	}
	
	if diacount == 44
	{
		text = "망가져도 내탓은 아니니까 말이야";
	}


	
	return text;
}