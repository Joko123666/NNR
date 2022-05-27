//for pad


right = keyboard_check(ord("D"));
left  = keyboard_check(ord("A"));
up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));
moveskill  = keyboard_check_pressed(vk_space);
interaction = keyboard_check_pressed(ord("U"));
item = keyboard_check_pressed(ord("I"));

baseattack = keyboard_check_pressed(ord("J"));
attackskill = keyboard_check_pressed(ord("K"));
jump = keyboard_check_pressed(ord("L"));


down_jump = down && jump;

UI_interaction = "U";
UI_attackskill = "K";
UI_moveskill = "Spc";
UI_itemkey = "I";
UI_attackkey = "J";
UI_jumpkey = "L";

