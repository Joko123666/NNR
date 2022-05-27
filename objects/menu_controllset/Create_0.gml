
state = "Menu1";
input = instance_create_layer(0, 0, "Instances", oInputUI);


x = 0;
y = 0;

num1_x = 12;
num1_y = 12;

num2_x = 12;
num2_y = 46;

num3_x = 12;
num3_y = 80;

num4_x = 12;
num4_y = 114;

num5_x = 12;
num5_y = 145;

selection_x = 12;
selection_y = 12;

if global.input_type == "A"
{confirm_x = 24; confirm_y = 26;}
if global.input_type == "B"
{confirm_x = 24; confirm_y = 60;}
if global.input_type == "C"
{confirm_x = 24; confirm_y = 94;}
if global.input_type == "D"
{confirm_x = 24; confirm_y = 128;}

