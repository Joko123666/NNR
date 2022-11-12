// text is just fucked now

var hp_x = 114;
var hp_y = 6;
var hp_width =  camera_get_view_width(view_camera[0]) - 140;
var hp_height = 10;
var hp_percent = HP / maxHP;

draw_rectangle_color(hp_x, hp_y, hp_x + hp_width , hp_y + hp_height, c_dkgray, c_dkgray, c_dkgray, c_dkgray, false);
draw_rectangle_color(hp_x, hp_y, (hp_x + hp_width * hp_percent), hp_y + hp_height, c_teal, c_teal, c_teal, c_teal, false);


draw_line_width(hp_x, hp_y, hp_x + hp_width, hp_y, 2);
draw_line_width(hp_x, hp_y, hp_x, hp_y + hp_height, 2);
draw_line_width(hp_x + hp_width, hp_y, hp_x + hp_width, hp_y + hp_height, 2);
draw_line_width(hp_x, hp_y + hp_height, hp_x + hp_width, hp_y + hp_height, 2);