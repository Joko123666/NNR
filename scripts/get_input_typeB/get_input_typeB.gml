
right = keyboard_check(vk_right);
left  = keyboard_check(vk_left);
up = keyboard_check(vk_up);
down = keyboard_check(vk_down);
moveskill  = keyboard_check_pressed(vk_shift);
interaction = keyboard_check_pressed(ord("F"));
item = keyboard_check_pressed(ord("D"));

baseattack = keyboard_check_pressed(ord("A"));
jump = keyboard_check_pressed(vk_space);
attackskill = keyboard_check_pressed(ord("S"));


down_jump = down && jump;

UI_interaction = "F";
UI_attackskill = "S";
UI_moveskill = "Shf";
UI_itemkey = "D";
UI_attackkey = "A";
UI_jumpkey = "Spc";
UI_move = "←↑→↓";
