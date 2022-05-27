

if act_count <=0 && total_count > 0
{
	repeat(random_range(3,7))
	{
	instance_create_depth(x + random_range(-24, 24), y-28, 10, oparticle_04);
	}
	act_count = random_range(2, 13);
}

if place_meeting(x,y,oPlayer) && deactive_count <= 0
{
	instance_create_layer(x, y-48, "Effects", ui_interaction_button);
}

if place_meeting(x,y,oPlayer) && oPlayer.input.interaction	&& deactive_count <=0
{
	if total_count > 0
	{
		oPlayer.HP += 30;
		total_count--;
		deactive_count = 75;
		var text = instance_create_layer(x, y-62, "Effects", text_drawingob);
		text.text = "스프를 한잔 마셨다!";
		var text_width = string_width(text.text);
		text.x -= text_width/2 + 4;
		audio_play_sound(SE_system01, 1, false);
	}
	else
	{
		deactive_count = 75;
		var text = instance_create_layer(x, y-62, "Effects", text_drawingob);
		text.text = "스프를 전부 마셔버렸다";
		var text_width = string_width(text.text);
		text.x -= text_width/2 + 4;
		audio_play_sound(SE_system05, 1, false);
	}
}

if deactive_count > 0 
	{ deactive_count--;}
if act_count > 0 
	{ act_count--;}


if place_meeting(x, y, oHitbox)
{
	create_deathob(furniture_pot_desob, ofurniture_pot_frag, 8, 24);
	instance_destroy();
}