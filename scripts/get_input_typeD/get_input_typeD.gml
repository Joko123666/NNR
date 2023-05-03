//pad is dead


right = keyboard_check(vk_right);
left  = keyboard_check(vk_left);
up = keyboard_check(vk_up);
down = keyboard_check(vk_down);
moveskill  = keyboard_check_pressed(vk_shift);
interaction = keyboard_check_pressed(ord("A"));
item = keyboard_check_pressed(ord("S"));

baseattack = keyboard_check_pressed(ord("X"));
attackskill = keyboard_check_pressed(ord("Z"));
jump = keyboard_check_pressed(ord("C"));


down_jump = down && jump;

UI_interaction = "A";
UI_attackskill = "Z";
UI_moveskill = "Shf";
UI_itemkey = "S";
UI_attackkey = "X";
UI_jumpkey = "C";
UI_move = "←↑→↓";
