
if place_meeting(x,y,oPlayer)
{
	instance_create_layer(x, y-20, "Effects", ui_interaction_button);
}

if place_meeting(x,y,oPlayer) && oPlayer.input.interaction 
{
	active = true;
}
else {active = false;}

if active == true
{
	oPlayer.level = 1;
	oPlayer.HP = oPlayer.maxHP;
	oPlayer.MP = oPlayer.maxMP;
	oPlayer.Exp = 0;
	fade_toroom(Village_Playerhouse_reset, 40, c_black);
	oPlayer.dialog_count = 0;
	global.mainstream = 99;
	global.room_direction = 1;
	global.effect_fadeout = true;
	oPlayer.act_count = 35;
}