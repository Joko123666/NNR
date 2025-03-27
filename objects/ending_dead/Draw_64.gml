
var screen_width = display_get_gui_width();
var screen_height = display_get_gui_height();

draw_rectangle_color(-20, -20, screen_width +20 , screen_height +20 ,c_black, c_black, c_black, c_black, 0);



var x_point = 160;
var y_point = 40;
var y_distance = 20;

//텍스트 파일 호출
	var file = file_text_open_read(working_directory + "Ending_monologue.txt");
	for (var i = 1; i < 135; i++;)
	{
	    scr_name[i] = file_text_read_string(file);
	    file_text_readln(file);
	}
	file_text_close(file);

var diacount = 0;
if global.language == "Korean"
{
	var text_line_num = 3;
}
if global.language == "English"
{
	var text_line_num = 67;
}

if text_01 == true
{
	var diacount = 0;
	var text_line01 = scr_name[diacount + text_line_num];
	var text_width = string_width(text_line01);
	draw_text(x_point- text_width/2, y_point , text_line01);
	
	var text_line02 = scr_name[diacount + text_line_num + 1];
	var text_width = string_width(text_line02);
	draw_text(x_point- text_width/2, y_point  + y_distance, text_line02);
	
	var text_line03 = scr_name[diacount + text_line_num + 2];
	var text_width = string_width(text_line03);
	draw_text(x_point- text_width/2, y_point  + y_distance*2, text_line03);
	
	var text_line04 = scr_name[diacount + text_line_num + 3];
	var text_width = string_width(text_line04);
	draw_text(x_point- text_width/2, y_point  + y_distance*3, text_line04);
	
	var text_line05 = scr_name[diacount + text_line_num + 4];
	var text_width = string_width(text_line05);
	draw_text(x_point- text_width/2, y_point  + y_distance*4, text_line05);
}


if text_02 == true
{
	var diacount = 5;
	var text_line01 = scr_name[diacount + text_line_num];
	var text_width = string_width(text_line01);
	draw_text(x_point- text_width/2, y_point , text_line01);
	
	var text_line02 = scr_name[diacount + text_line_num + 1];
	var text_width = string_width(text_line02);
	draw_text(x_point- text_width/2, y_point  + y_distance, text_line02);
	
	var text_line03 = scr_name[diacount + text_line_num + 2];
	var text_width = string_width(text_line03);
	draw_text(x_point- text_width/2, y_point  + y_distance*2, text_line03);
	
	var text_line04 = scr_name[diacount + text_line_num + 3];
	var text_width = string_width(text_line04);
	draw_text(x_point- text_width/2, y_point  + y_distance*3, text_line04);
	
	var text_line05 = scr_name[diacount + text_line_num + 4];
	var text_width = string_width(text_line05);
	draw_text(x_point- text_width/2, y_point  + y_distance*4, text_line05);
}

if text_03 == true
{
	var diacount = 10;
	var text_line01 = scr_name[diacount + text_line_num];
	var text_width = string_width(text_line01);
	draw_text(x_point- text_width/2, y_point , text_line01);
	
	var text_line02 = scr_name[diacount + text_line_num + 1];
	var text_width = string_width(text_line02);
	draw_text(x_point- text_width/2, y_point  + y_distance, text_line02);
	
	var text_line03 = global.Deathcount_total;
	var text_width = string_width(text_line03);
	draw_text(x_point- text_width/2, y_point  + y_distance*2, text_line03);
	
	var text_line04 = scr_name[diacount + text_line_num + 3];
	var text_width = string_width(text_line04);
	draw_text(x_point- text_width/2, y_point  + y_distance*3, text_line04);
	
	var text_line05 = scr_name[diacount + text_line_num + 4];
	var text_width = string_width(text_line05);
	draw_text(x_point- text_width/2, y_point  + y_distance*4, text_line05);
}

if text_04 == true
{
	var diacount = 15;
	var text_line01 = scr_name[diacount + text_line_num];
	var text_width = string_width(text_line01);
	draw_text(x_point- text_width/2, y_point , text_line01);
	
	var text_line02 = scr_name[diacount + text_line_num + 1];
	var text_width = string_width(text_line02);
	draw_text(x_point- text_width/2, y_point  + y_distance, text_line02);
	
	var text_line03 = scr_name[diacount + text_line_num + 2];
	var text_width = string_width(text_line03);
	draw_text(x_point- text_width/2, y_point  + y_distance*2, text_line03);
	
	var text_line04 = scr_name[diacount + text_line_num + 3];
	var text_width = string_width(text_line04);
	draw_text(x_point- text_width/2, y_point  + y_distance*3, text_line04);
	
	var text_line05 = scr_name[diacount + text_line_num + 4];
	var text_width = string_width(text_line05);
	draw_text(x_point- text_width/2, y_point  + y_distance*4, text_line05);
}