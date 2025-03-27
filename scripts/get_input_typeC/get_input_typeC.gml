
right = keyboard_check(ord("D"));
left  = keyboard_check(ord("A"));
up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));
moveskill  = keyboard_check_pressed(vk_shift);
interaction = keyboard_check_pressed(ord("U"));
item = keyboard_check_pressed(ord("H"));

baseattack = keyboard_check_pressed(ord("J"));
attackskill = keyboard_check_pressed(ord("K"));
jump = keyboard_check_pressed(vk_space);


down_jump = down && jump;

UI_interaction = "U";
UI_attackskill = "K";
UI_moveskill = "Shf";
UI_itemkey = "H";
UI_attackkey = "J";
UI_jumpkey = "Spc";
UI_move = "WASD";
