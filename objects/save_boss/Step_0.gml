
act_count = count_decrease(act_count, 1, 0);

if place_meeting(x,y,oPlayer) && act_count <= 0 && state == "deactive"
{
	instance_create_layer(x, y-68, "Effects", ui_interaction_button);	//상호작용 표시
}

if place_meeting(x,y,oPlayer) && act_count <= 0 && oPlayer.input.interaction
{
	lastHP = oPlayer.HP;
	lastMP = oPlayer.MP;
	save_game();
	oPlayer.HP = lastHP;
	oPlayer.MP = lastMP;
	state = "active";
}

if state == "active"
{	
	state_set_sprite(save_boss_active, 1, 0);
	if animation_end()
	{image_speed = 0;}
}