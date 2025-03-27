
textbox_x = camera_get_view_x(view_camera[0]);
textbox_y = camera_get_view_y(view_camera[0]);

//setup
if setup == false
{
	setup = true;
	draw_set_font(Font3);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	
	//loop throught the page
	page_num = array_length(text);
	for(var p=0; p < page_num; p++)
	{
		//find how many characters in each page and store
		text_length[p] = string_length(text[p]);
		
		text_x_offset[p] = 0;
		
	}
	
}

//typing the text
if draw_char < text_length[page]
{
	draw_char += text_spd;
	draw_char = clamp(draw_char, 0, text_length[page]);
}


//flip through pages
if keyboard_check_pressed(vk_numpad5)
{
	//if the type is done
	if draw_char == text_length[page]
	{
		//next_page
		if page < page_num
		{
			page++;
			draw_char = 0;
		}
		//destroy textbox
		else
		{
			instance_destroy();
		}
	}
	//if type is done
	else
	{
		draw_char = text_length[page];
	}

}

//draw_textbod
textbox_img += textbox_img_spd;
textbox_spr_w = sprite_get_width(textbox_spr);
textbox_spr_h = sprite_get_height(textbox_spr);
//back of sprite
draw_sprite_ext(textbox_spr, textbox_img, textbox_x + text_x_offset[page], textbox_y, textbox_width/textbox_spr_w, textbox_height/textbox_spr_h, 0, c_white, 1);

//draw the text
var _drawtext = string_copy(text[page], 1, draw_char);
draw_text_ext(textbox_x + text_x_offset[page] + border, textbox_y + border, _drawtext, line_sep, line_width);

