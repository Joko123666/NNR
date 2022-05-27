if room != Title
{draw_sprite(UI_halfblack, 0, -20, -20);}


draw_self();

x = 0;
y = 0;




if state == "Menu1"
{
	if room != Title
	{draw_sprite(UI_Hud_select_volume_1, 0, x_point, y_point);}
	if room == Title
	{draw_sprite_ext(UI_Hud_select_volume_1, 0, x_point, y_point, 4, 4, 0, c_white, 1);}
}
if state == "Menu2"
{
	if room != Title
	{draw_sprite(UI_Hud_select_volume_2, 0, x_point2, y_point2);}
	if room == Title
	{draw_sprite_ext(UI_Hud_select_volume_2, 0, x_point2, y_point2, 4, 4, 0, c_white, 1);}
}


//draw slider
if room != Title
{draw_sprite(UI_Hud_slider_volume, 0, slider_x_point, slider_y_point);}
if room == Title
{draw_sprite_ext(UI_Hud_slider_volume, 0, slider_x_point, slider_y_point, 4, 4, 0, c_white, 1);}
