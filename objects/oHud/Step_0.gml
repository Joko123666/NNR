
var camera_id = view_camera[0];
if room == Thomb_boss or room == Vally_tunnel_boss or room == Final_bossarea or room == Final_bossarea_end
{var camera_id = view_camera[1]; }
var view_width = camera_get_view_width(camera_id);
var view_height = camera_get_view_height(camera_id);
display_set_gui_size(view_width, view_height);

if darken_screen > 0
{darken_screen -= 2;}