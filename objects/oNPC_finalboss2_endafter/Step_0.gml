

if place_meeting(x,y,oPlayer) && deactivate_count <= 0
{
	contect = true;
}
else {contect = false;}

if contect == true && oPlayer.input.interaction	&& act_count <=0	&& state == "deactive"
{
	if instance_exists(text_drawingob)
	{instance_destroy(text_drawingob);}
	
	var file = file_text_open_read(working_directory + "NPC99_endafter.txt");
	for (var i = 1; i < 300; i++;)
	{
	    scr_name[i] = file_text_read_string(file);
	    file_text_readln(file);
	}
	file_text_close(file);
	
	if global.language == "Korean"
	{var text_line_num = 2;}
	if global.language == "English"
	{var text_line_num = 30;}
	
	if state_num == 0
	{
		var text = instance_create_layer(x, y-64, "Effects", text_drawingob);
		text.text = scr_name[text_line_num + state_num];
		var text_width = string_width(text.text);
		text.x -= text_width/2 + 4;
		alarm[1] = 3;
		global.mainstream = 90;
	}
	
	if state_num == 1
	{
		var text = instance_create_layer(x, y-64, "Effects", text_drawingob);
		text.text = scr_name[text_line_num + state_num];
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
		text.text = scr_name[text_line_num + state_num - 1];
		var text_width = string_width(text.text);
		text.x -= text_width/2 + 4;
		alarm[1] = 3;
	}
	
	if state_num == 4
	{
		var text = instance_create_layer(x, y-64, "Effects", text_drawingob);
		text.text = scr_name[text_line_num + state_num - 1];
		var text_width = string_width(text.text);
		text.x -= text_width/2 + 4;
		sprite_index = finalboss_afterdead_reading;
		alarm[1] = 3;
	}
	
	if state_num == 5
	{
		var text = instance_create_layer(x, y-64, "Effects", text_drawingob);
		text.text = scr_name[text_line_num + state_num - 1];
		var text_width = string_width(text.text);
		text.x -= text_width/2 + 4;
		alarm[1] = 3;
	}
	
	if state_num == 6
	{
		var text = instance_create_layer(x, y-64, "Effects", text_drawingob);
		text.text = scr_name[text_line_num + state_num - 1];
		var text_width = string_width(text.text);
		text.x -= text_width/2 + 4;
		sprite_index = finalboss_talk3;
		alarm[1] = 3;
	}
	
	if state_num == 7
	{
		var text = instance_create_layer(x, y-64, "Effects", text_drawingob);
		text.text = scr_name[text_line_num + state_num - 1];
		var text_width = string_width(text.text);
		text.x -= text_width/2 + 4;
		alarm[1] = 3;
	}
	
	if state_num == 8
	{
		var text = instance_create_layer(x, y-64, "Effects", text_drawingob);
		text.text = scr_name[text_line_num + state_num - 1];
		var text_width = string_width(text.text);
		text.x -= text_width/2 + 4;
		alarm[1] = 3;
	}
	
	if state_num == 9
	{
		var text = instance_create_layer(x, y-64, "Effects", text_drawingob);
		text.text = scr_name[text_line_num + state_num - 1];
		var text_width = string_width(text.text);
		text.x -= text_width/2 + 4;
		alarm[1] = 3;
	}
	
	if state_num == 10
	{
		var text = instance_create_layer(x, y-64, "Effects", text_drawingob);
		text.text = scr_name[text_line_num + state_num - 1];
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
	
	#region old text
	/*
	if state_num == 12
	{
		var text = instance_create_layer(x, y-64, "Effects", text_drawingob);
		text.text = "당신의 의지를 존중한다";
		var text_width = string_width(text.text);
		text.x -= text_width/2 + 4;
		sprite_index = finalboss_talk3;
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
	*/
	#endregion
	
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
		if state_num == 11
		{
			instance_create_layer(x, y, "boss",oenemy_finalboss2_last);
			global.BGM_number = 18;
			var x_distance = 88;
			instance_create_layer(750, 418, "walls", finalboss_Wall11);
			instance_create_layer(750 - x_distance, 418, "walls", finalboss_Wall11);
			instance_create_layer(750 - x_distance*2, 418, "walls", finalboss_Wall11);
			instance_create_layer(750 - x_distance*3, 418, "walls", finalboss_Wall11);
			instance_create_layer(750 - x_distance*4, 418, "walls", finalboss_Wall11);
			instance_create_layer(750 - x_distance*5, 418, "walls", finalboss_Wall11);
			instance_create_layer(1060, 418, "walls", finalboss_Wall11);
			instance_create_layer(1060 + x_distance, 418, "walls", finalboss_Wall11);
			instance_create_layer(1060 + x_distance*2, 418, "walls", finalboss_Wall11);
			instance_create_layer(1060 + x_distance*3, 418, "walls", finalboss_Wall11);
			instance_create_layer(1060 + x_distance*4, 418, "walls", finalboss_Wall11);
			instance_create_layer(1060 + x_distance*5, 418, "walls", finalboss_Wall11);
			instance_create_layer(1060 + x_distance*6, 418, "walls", finalboss_Wall11);
			instance_destroy(); 
		}
		if state_num >=16
		{fade_toroom(Savecenter_end, 15, c_white); global.room_direction = 50;}
	}
}


if act_count > 0
{act_count--;}
