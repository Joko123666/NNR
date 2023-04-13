event_inherited();
maxHP = 3000;
HP = maxHP;
HP_checkpoint = HP;
Exp = 0;
object_type = "boss"
pattern_HP1 = 2000;
pattern_HP2 = 1000;
pattern_HP3 = 800;

pattern_random = irandom(2);
x_point = x;
y_point = y;

state = "Neutral"
phase_state = "Phase_1";
this_act = "empty";
last_act = "empty";
act_set = false;

act_range = 2246;
attack_range = 250;
act_num = random(10);
act_count = 120;
act_switch = false;
delay_count = 20;
move_speed = 0;
moving_speed = 0;
charge_speed = 0;

knockback_power = 5;		//타격 넉백파워 
attack_power = 40;			//공격 파워
damage = 10;
side = 1;
act_count_set = 90;

grv = 1;
vsp = 0;

numberof_minions = 0;

shockwave_count = 3;

hit_swich = false;
hit_count = 0;

deadtext = "겨우 이정도로 쓰러질거면 포기하는게 좋지않나?";
diatext = "무엇을 위해서 이 순환을 계속하는가?";
dia_switch = false;
global.Deathcount_total = 0;

image_speed = 1;
if oPlayer.x > x {image_xscale = 1;}
if oPlayer.x < x {image_xscale = -1;}


var file = file_text_open_read(working_directory + "NPC99_endafter.txt");
for (var i = 1; i < 300; i++;)
{
    scr_name[i] = file_text_read_string(file);
    file_text_readln(file);
}
file_text_close(file);

if global.language == "Korean"
{var text_line_num = 12;}
if global.language == "English"
{var text_line_num = 40;}
	
var text = instance_create_layer(x, y-62, "Effects", text_drawingob);
text.text =  scr_name[text_line_num];
var text_width = string_width(text.text);
text.x -= text_width/2 + 4;
	