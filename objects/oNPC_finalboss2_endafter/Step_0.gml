

if place_meeting(x,y,oPlayer) && deactivate_count <= 0
{
	contect = true;
}
else {contect = false;}

if contect == true && oPlayer.input.interaction	&& act_count <=0	&& state == "deactive"
{
	if instance_exists(text_drawingob)
	{instance_destroy(text_drawingob);}
	if state_num == 0
	{
		var text = instance_create_layer(x, y-64, "Effects", text_drawingob);
		text.text = "마스터의 접촉을 확인";
		var text_width = string_width(text.text);
		text.x -= text_width/2 + 4;
		alarm[1] = 3;
		global.mainstream = 90;
	}
	
	if state_num == 1
	{
		var text = instance_create_layer(x, y-64, "Effects", text_drawingob);
		text.text = "관리자시스템을 재기동합니다";
		var text_width = string_width(text.text);
		text.x -= text_width/2 + 4;
		alarm[1] = 3;
	}
	
	if state_num == 2
	{
		sprite_index = active_sprite;
		alarm[1] = 3;
	}
	
	if state_num == 3
	{
		var text = instance_create_layer(x, y-64, "Effects", text_drawingob);
		text.text = "어서오십시오ㅡ마스터";
		var text_width = string_width(text.text);
		text.x -= text_width/2 + 4;
		alarm[1] = 3;
	}
	
	if state_num == 4
	{
		var text = instance_create_layer(x, y-64, "Effects", text_drawingob);
		text.text = "저장된 관리자인격을 불러오는중입니다";
		var text_width = string_width(text.text);
		text.x -= text_width/2 + 4;
		sprite_index = finalboss_afterdead_reading;
		alarm[1] = 3;
	}
	
	if state_num == 5
	{
		var text = instance_create_layer(x, y-64, "Effects", text_drawingob);
		text.text = "...";
		var text_width = string_width(text.text);
		text.x -= text_width/2 + 4;
		alarm[1] = 3;
	}
	
	if state_num == 6
	{
		var text = instance_create_layer(x, y-64, "Effects", text_drawingob);
		text.text = "... 결국 다시 시작하기로 한건가";
		var text_width = string_width(text.text);
		text.x -= text_width/2 + 4;
		sprite_index = active_sprite;
		alarm[1] = 3;
	}
	
	if state_num == 7
	{
		var text = instance_create_layer(x, y-64, "Effects", text_drawingob);
		text.text = "몇번째의 선택인지는 모르지만";
		var text_width = string_width(text.text);
		text.x -= text_width/2 + 4;
		alarm[1] = 3;
	}
	
	if state_num == 8
	{
		var text = instance_create_layer(x, y-64, "Effects", text_drawingob);
		text.text = "같은일을 계속해서 반복하는것은";
		var text_width = string_width(text.text);
		text.x -= text_width/2 + 4;
		alarm[1] = 3;
	}
	
	if state_num == 9
	{
		var text = instance_create_layer(x, y-64, "Effects", text_drawingob);
		text.text = "나로서도 권장하고싶지 않다";
		var text_width = string_width(text.text);
		text.x -= text_width/2 + 4;
		alarm[1] = 3;
	}
	
	if state_num == 10
	{
		var text = instance_create_layer(x, y-64, "Effects", text_drawingob);
		text.text = "하지만 그럼에도 이 다음으로 넘어가겠다면...";
		var text_width = string_width(text.text);
		text.x -= text_width/2 + 4;
		alarm[1] = 3;
	}
	
	if state_num == 11
	{
		sprite_index = finalboss_afterdeath_operationg;
		state = "active";
		image_speed = 1;
	}
	
	if state_num == 12
	{
		var text = instance_create_layer(x, y-64, "Effects", text_drawingob);
		text.text = "당신의 의지를 존중한다";
		var text_width = string_width(text.text);
		text.x -= text_width/2 + 4;
		alarm[1] = 3;
		global.mainstream = 91;
	}
	
	if state_num == 13
	{
		var text = instance_create_layer(x, y-64, "Effects", text_drawingob);
		text.text = "그러면 이제 기억소거만 남았으니";
		var text_width = string_width(text.text);
		text.x -= text_width/2 + 4;
		alarm[1] = 3;
	}
	
	if state_num == 14
	{
		var text = instance_create_layer(x, y-64, "Effects", text_drawingob);
		text.text = "저장소로 전송시켜주지";
		var text_width = string_width(text.text);
		text.x -= text_width/2 + 4;
		alarm[1] = 3;
	}
	
	if state_num == 15
	{
		var text = instance_create_layer(x, y-64, "Effects", text_drawingob);
		text.text = "부디 마음의 준비를 끝내놓도록";
		var text_width = string_width(text.text);
		text.x -= text_width/2 + 4;
		alarm[1] = 3;
	}
	if state_num == 16
	{
		sprite_index = finalboss_afterdeath_operationg;
		state = "active";
		image_speed = 1;
	}
	
	act_count = 25;
	audio_play_sound(SE_dialog_m02, 1, false);
	
}


if state == "active"
{
	if animation_end()
	{
		image_speed = 0;
		state = "deactive";
		alarm[1] = 3;
		
		if state_num >=16
		{fade_toroom(Savecenter_end, 15, c_white); global.room_direction = 50;}
	}
}


if act_count > 0
{act_count--;}
