
var camera_id = view_camera[0];
if room == Thomb_boss or room == Vally_tunnel_boss or room == Final_bossarea
{var camera_id = view_camera[1]; }
var view_width = camera_get_view_width(camera_id);
var view_height = camera_get_view_height(camera_id);
display_set_gui_size(view_width, view_height);



if !instance_exists(oPlayer) exit;
draw_hp = 0;
draw_maxhp = 0;
draw_mp = 0;
draw_maxmp = 0;
draw_set_font(Font1);

draw_exp = 0;
draw_maxexp = 0;

quest_board1 = "empty";
quest_board2 = "empty";
quest_board3 = "empty";

quest_board1_state = 0;
quest_board2_state = 0;
quest_board3_state = 0;