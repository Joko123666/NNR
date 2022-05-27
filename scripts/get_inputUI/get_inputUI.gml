right = keyboard_check_pressed(vk_right);
left  = keyboard_check_pressed(vk_left);
up = keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W"));
down = keyboard_check_pressed(vk_down) or keyboard_check_pressed(ord("S"));
space  = keyboard_check_pressed(vk_space);

keyA = keyboard_check_pressed(ord("A"));
keyB = keyboard_check_pressed(ord("S"));
keyC = keyboard_check_pressed(ord("D"));

interaction = keyboard_check_pressed(ord("E")) or keyboard_check_pressed(vk_enter);
cansel = keyboard_check_pressed(ord("Q")) or  keyboard_check_pressed(vk_escape) or  keyboard_check_pressed(vk_backspace)

