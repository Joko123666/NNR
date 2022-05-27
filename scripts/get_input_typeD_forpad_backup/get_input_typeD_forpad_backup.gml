//for pad


right = gamepad_button_check(os_xboxone,gp_padr) or gamepad_axis_value(0, gp_axislh) > 0;
left  = gamepad_button_check(os_xboxone,gp_padl) or gamepad_axis_value(0, gp_axislh) < 0;
up = gamepad_button_check(os_xboxone,gp_padu);
down = gamepad_button_check(os_xboxone,gp_padd);
moveskill  = gamepad_button_check(os_xboxone,gp_shoulderl);
interaction = gamepad_button_check(os_xboxone,gp_face3);
item = gamepad_button_check(os_xboxone,gp_face4);

baseattack = gamepad_button_check(os_xboxone,gp_face2);
attackskill = gamepad_button_check(os_xboxone,gp_shoulderr);
jump = gamepad_button_check(os_xboxone,gp_face1);


down_jump = down && jump;

UI_interaction = "B";
UI_attackskill = "R1";
UI_moveskill = "L1";
UI_itemkey = "Y";
UI_attackkey = "X";
UI_jumpkey = "A";

