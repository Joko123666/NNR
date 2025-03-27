
right = keyboard_check(vk_right);
left  = keyboard_check(vk_left);
up = keyboard_check(vk_up);
down = keyboard_check(vk_down);
moveskill  = keyboard_check_pressed(vk_space);
interaction = keyboard_check_pressed(ord("E"));
item = keyboard_check_pressed(ord("Q"));

baseattack = keyboard_check_pressed(ord("A"));
jump = keyboard_check_pressed(ord("S"));
attackskill = keyboard_check_pressed(ord("D"));

down_jump = down && jump;

UI_interaction = "E";
UI_attackskill = "D";
UI_moveskill = "Spc";
UI_itemkey = "Q";
UI_attackkey = "A";
UI_jumpkey = "S";
UI_move = "←↑→↓";

