
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

if global.last_dialog == 3	&& dia_switch == false
{diatext = "기억을 지우고 얼마 지나지 않았지만";	alarm[3] = 100;dia_switch = true;	audio_play_sound(SE_dialog_m02, 1, 0);}
if global.last_dialog == 4	&& dia_switch == false
{diatext = "그래도 말할수 있는게 있다";	alarm[3] = 100;dia_switch = true;	audio_play_sound(SE_dialog_m02, 1, 0);}
if global.last_dialog == 5	&& dia_switch == false
{diatext = "가짜라 해도 나는 이 세계를 즐겼고";	alarm[3] = 100;dia_switch = true;	audio_play_sound(SE_dialog_m02, 1, 0);}
if global.last_dialog == 6	&& dia_switch == false
{diatext = "적어도 완전히 끝낼 마음은 들지 않는다";	alarm[3] = 100;dia_switch = true;	audio_play_sound(SE_dialog_m02, 1, 0);}




