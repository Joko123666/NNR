
if place_meeting(x, y, oPlayer) && act_count <= 0
{contect = true;}
else {contect = false;}

if oPlayer.input.interaction && place_meeting(x, y, oPlayer) && act_count <= 0
{
	if global.gold < item_cost
	{
		var text = instance_create_depth(x, y - 64, 0, text_drawingob);
		if (global.language == "Korean")
		{text.text = "가진 돈이 부족하다";}
		else if (global.language == "English")
		{text.text = "Not enough money";}
		var text_width = string_width(text.text);
		text.x -= text_width/2 + 4;
	}
	if global.gold >= item_cost
	{
		instance_create_layer(x, y-32, "Effects", Item_healpotion2);
		itemstock--;
		audio_play_sound(SE_coin01, 1, false);
		global.gold -= item_cost;
		audio_play_sound(SE_coin02, 1, false);
	}
	act_count = 45;
}

if itemstock == 0
{
	instance_create_layer(x, y, "Instances", sale_soldout);
	instance_destroy();
}

if act_count > 0
{act_count--;}



