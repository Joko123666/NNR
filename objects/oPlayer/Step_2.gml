
if HP<=0
{
	if Exp > 0
	{repeat(5){instance_create_depth(x, y-16, 10, oparticle_expdrop);}}
	if global.gold > 0
	{repeat(5){instance_create_depth(x, y-16, 10, oparticle_gloddrop);}}
	
	state = "Death"
	invincibility = true;
	vsp = -4; 
	moving_speed = image_xscale * -2;
	revive_count = revive_maxcount; 
	HP=1;
	global.Deathcount_total += 1;
	global.gold = 0;
	audio_play_sound(SE_death01, 1, false);
	screen_shake(30, 10);
	Exp = 0;
	if level > 1	&& room!= Final_bossarea
	{
		
	}
	if room == Final_bossarea
	{
		revive_count = 1;
	}
}

//텍스트 파일 호출
	var file = file_text_open_read(working_directory + "Player_end_dialog.txt");
	for (var i = 1; i < 65; i++;)
	{
	    scr_name[i] = file_text_read_string(file);
	    file_text_readln(file);
	}
	file_text_close(file);
	
	if global.language == "Korean"
	{
		var text_line_num = 14;
	}
	
	if global.language == "English"
	{
		var text_line_num = 32;
	}


if global.last_dialog == 3	&& dia_switch == false
{diatext = scr_name[text_line_num];	alarm[3] = 100;dia_switch = true;	audio_play_sound(SE_dialog_m02, 1, 0);}
if global.last_dialog == 4	&& dia_switch == false
{diatext = scr_name[text_line_num + 1];	alarm[3] = 100;dia_switch = true;	audio_play_sound(SE_dialog_m02, 1, 0);}
if global.last_dialog == 5	&& dia_switch == false
{diatext = scr_name[text_line_num + 2];	alarm[3] = 100;dia_switch = true;	audio_play_sound(SE_dialog_m02, 1, 0);}
if global.last_dialog == 6	&& dia_switch == false
{diatext = scr_name[text_line_num + 3];	alarm[3] = 100;dia_switch = true;	audio_play_sound(SE_dialog_m02, 1, 0);}


