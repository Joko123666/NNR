
draw_self();

var x_point = x + 18;
var y_point = y + 24;
var y_distance = 68;


if global.input_type == "A"
{draw_sprite(setting_button_title_select, 0, x_point, y_point);}
if global.input_type == "B"
{draw_sprite(setting_button_title_select, 0, x_point, y_point + y_distance);}
if global.input_type == "C"
{draw_sprite(setting_button_title_select, 0, x_point, y_point + y_distance * 2);}
if global.input_type == "D"
{draw_sprite(setting_button_title_select, 0, x_point, y_point + y_distance * 3);}

var x_point2 = x + 218;
var y_point2 = y + 36;
var x_distance2 = 188;
var y_distance2 = 40;

if global.language == "English"
{
	draw_set_font(Font5)
	draw_text(x_point + 22, y_point + 13, "Set A");
	draw_text(x_point + 22, y_point + y_distance + 13, "Set B");
	draw_text(x_point + 22, y_point + y_distance*2 + 13, "Set C");
	draw_text(x_point + 22, y_point + y_distance*3 + 13, "Set D");
	
	draw_text(x_point2, y_point2, "Move");
	draw_text(x_point2 + x_distance2, y_point2, key.UI_move);
	draw_text(x_point2, y_point2 + y_distance2*1, "Jump");
	draw_text(x_point2 + x_distance2, y_point2 + y_distance2*1, key.UI_jumpkey);
	draw_text(x_point2, y_point2 + y_distance2*2, "Attack");
	draw_text(x_point2 + x_distance2, y_point2 + y_distance2*2, key.UI_attackkey);
	draw_text(x_point2, y_point2 + y_distance2*3, "S.Attack");
	draw_text(x_point2 + x_distance2, y_point2 + y_distance2*3, key.UI_attackskill);
	draw_text(x_point2, y_point2 + y_distance2*4, "S.Move");
	draw_text(x_point2 + x_distance2, y_point2 + y_distance2*4, key.UI_moveskill);
	draw_text(x_point2, y_point2 + y_distance2*5, "Item");
	draw_text(x_point2 + x_distance2, y_point2 + y_distance2*5, key.UI_itemkey);
	
	draw_text(x + 296, y + 302, "OK");	
}
if global.language == "Korean"
{
	var y_point2 = y + 40;
	var x_distance2 = 194;
	draw_set_font(Font4)
	draw_text(x_point + 24, y_point + 13, "버튼 A");
	draw_text(x_point + 24, y_point + y_distance + 13, "버튼 B");
	draw_text(x_point + 24, y_point + y_distance*2 + 13, "버튼 C");
	draw_text(x_point + 24, y_point + y_distance*3 + 13, "버튼 D");
	
	draw_text(x_point2, y_point2, "이동");
	draw_text(x_point2 + x_distance2, y_point2, key.UI_move);
	draw_text(x_point2, y_point2 + y_distance2*1, "점프");
	draw_text(x_point2 + x_distance2, y_point2 + y_distance2*1, key.UI_jumpkey);
	draw_text(x_point2, y_point2 + y_distance2*2, "기본공격");
	draw_text(x_point2 + x_distance2, y_point2 + y_distance2*2, key.UI_attackkey);
	draw_text(x_point2, y_point2 + y_distance2*3, "공격스킬");
	draw_text(x_point2 + x_distance2, y_point2 + y_distance2*3, key.UI_attackskill);
	draw_text(x_point2, y_point2 + y_distance2*4, "이동스킬");
	draw_text(x_point2 + x_distance2, y_point2 + y_distance2*4, key.UI_moveskill);
	draw_text(x_point2, y_point2 + y_distance2*5, "아이템");
	draw_text(x_point2 + x_distance2, y_point2 + y_distance2*5, key.UI_itemkey);
	
	draw_text(x + 292, y + 306, "확인");	
}



if state == "Menu1"
{draw_sprite(UI_Hud_select_light_164, 0, x_point, y_point - 4);}
if state == "Menu2"
{draw_sprite(UI_Hud_select_light_164, 0, x_point, y_point + y_distance - 4);}
if state == "Menu3"
{draw_sprite(UI_Hud_select_light_164, 0, x_point, y_point + y_distance * 2 - 4);}
if state == "Menu4"
{draw_sprite(UI_Hud_select_light_164, 0, x_point, y_point + y_distance * 3 - 4);}
if state == "Menu5"
{draw_sprite(UI_Hud_select_light_164_b, 0, x + 240, y + 296);}