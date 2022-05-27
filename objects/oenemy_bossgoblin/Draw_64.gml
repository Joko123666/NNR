// text is just fucked now

var hp_x = 184;
var hp_y = 332;
var hp_width = 264;
var hp_height = 16;
var hp_percent = HP / maxHP;

draw_rectangle_color(hp_x, hp_y, hp_x + hp_width , hp_y + hp_height, c_dkgray, c_dkgray, c_dkgray, c_dkgray, false);
draw_rectangle_color(hp_x, hp_y, (hp_x + hp_width * hp_percent), hp_y + hp_height, c_teal, c_teal, c_teal, c_teal, false);