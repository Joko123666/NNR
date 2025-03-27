
if place_meeting(x, y, oPlayer)	&& act_switch == false
{
	instance_create_layer(x, y-64, "Effects", ui_interaction_button);
}

if oPlayer.input.interaction && place_meeting(x, y, oPlayer) && act_switch == false	&& deactive_switch == false
{
	if text_number == 0
	{
		var text = instance_create_depth(x - 54, y - 64, 0, UI_text_drawingob);
			text.text = "바위에는 검이 꼿혀있다...";
	}
	if text_number == 1
	{
		var text = instance_create_depth(0, 0, 0, UI_text_drawingob);
			text.text = "꼿혀있는 검을 뽑을까?";
		var select = instance_create_depth(0, 0, -1, UI_text_select_button);
			select.textA = "뽑는다"
			select.textB = "그대로 둔다"
	}
	if text_number == 2
	{
		if global.selection == "A"
		{instance_create_depth(x, y-32, -1, Item_sword_get);deactive_switch = true;}
		if global.selection == "B"
		{text_number = 0;}
	}
	act_switch = true;
	act_delay = 60;
}

if global.Player_sword == true
	{deactive_switch = true}

if deactive_switch == true
	{ image_index = furniture_display_sword; }

if act_switch == true
{
	act_delay--;
	if act_delay <=0
	{
		act_switch = false;
		text_number ++;
	}
}