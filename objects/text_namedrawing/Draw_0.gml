

var text_width = string_width(text);
var x_arraypoint = x - text_width/2;
var y_arraypoint = y + 2;

draw_rectangle_color(x_arraypoint -1, y_arraypoint -1, x_arraypoint + text_width +1, y_arraypoint + 12, c_ltgray, c_ltgray, c_ltgray, c_ltgray, false);
draw_rectangle_color(x_arraypoint, y_arraypoint, x_arraypoint + text_width, y_arraypoint + 11, c_white, c_white, c_white, c_white, false);
draw_text_color(x_arraypoint, y_arraypoint, text, c_dkgray, c_dkgray, c_dkgray, c_dkgray, 1);