
if instance_exists(oHud)
{instance_destroy(oHud);}
if instance_exists(oMenucontrol)
{instance_destroy(oMenucontrol);}

oPlayer.state = "Stay";
alarm[0] = 30;
read_time = 380;
draw_set_font(Font3);
draw_set_color(c_white);
draw_set_alpha(0.7);

text_01 = false;
text_02 = false;
text_03 = false;
text_04 = false;
text_05 = false;