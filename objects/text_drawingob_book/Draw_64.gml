

var text01_width = string_width(text_line01);
//var text01_height = string_height(text_line01);

draw_sprite(UI_book, 0, 0, 40 );

var x_point = 32;
var y_point = 50;
var y_distance = 16;
draw_text_color(160 - text01_width/2, y_point - 4, text_line01, c_black, c_black, c_black, c_black, 1);
draw_text_color(x_point, y_point + y_distance, text_line02, c_black, c_black, c_black, c_black, 1);
draw_text_color(x_point, y_point + y_distance*2, text_line03, c_black, c_black, c_black, c_black, 1);
draw_text_color(x_point, y_point + y_distance*3, text_line04, c_black, c_black, c_black, c_black, 1);
draw_text_color(x_point, y_point + y_distance*4, text_line05, c_black, c_black, c_black, c_black, 1);
draw_text_color(x_point, y_point + y_distance*5, text_line06, c_black, c_black, c_black, c_black, 1);