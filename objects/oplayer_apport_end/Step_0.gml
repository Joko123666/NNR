
if global.end_sleep == true	&& place_meeting(x, y, oPlayer)
{
	var text = instance_create_layer(x, y-62, "Effects", text_drawingob);
	text.text = "시간이 흘러갔다, 아무것도 변하지않는다";
	instance_destroy();
}