

if place_meeting(x,y,oPlayer) && deactivate_count <= 0
{
	contect = true;
}
else {contect = false;}

if place_meeting(x,y,oPlayer) && oPlayer.input.interaction	&& act_count <=0
{
	act_count = 65;
	
	audio_play_sound(SE_system01, 1, false);

	var text = instance_create_layer(x, y-62, "Effects", text_drawingob_book2);
	text.page_number = page_number;
	text.text_line01 = book_text_12(page_number,1);
	text.text_line02 = book_text_12(page_number,2);
	text.text_line03 = book_text_12(page_number,3);
	text.text_line04 = book_text_12(page_number,4);
	text.text_line05 = book_text_12(page_number,5);
	text.text_line06 = book_text_12(page_number,6);
	page_number++;
	if page_number == 6
	{page_number = 1;}
	
}

act_count = count_decrease(act_count, 1, 0);

if place_meeting(x,y,oPlayer) && oPlayer.input.interaction	&& act_count < 60	&& instance_exists(text_drawingob_screen) && act_count > 2
{
	act_count = 2;
	instance_destroy(text_drawingob_screen)
}
if global.mainstream >= 90
{
	instance_create_depth(x, y, 1, ending_reset);
	instance_destroy();
}
