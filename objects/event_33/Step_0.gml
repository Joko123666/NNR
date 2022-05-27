if act_count >0
{act_count--;}

if global.mainstream <= 34	&& place_meeting(x, y, oPlayer)	&& act_count <=0
{
	var text = instance_create_layer(x, y-12, "Effects", text_drawingob);
	text.text = "바위로 길이 막혀있다";
	var text_width = string_width(text.text);
	text.x -= text_width/2 + 4;
	act_count = 40;
	global.mainstream = 34;
}
	
if global.mainstream >= 35
{instance_destroy();}
