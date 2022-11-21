

var screen_width = display_get_gui_width();
var screen_height = display_get_gui_height();

draw_rectangle_color(-20, -20, screen_width +20 , screen_height +20 ,c_black, c_black, c_black, c_black, 0);


var x_point = 160;
var y_point = 40;
var y_distance = 20;
if text_01 == true
{
	var text_line01 = "이렇게 이번 이야기는 막을 내렸다 "
	var text_width = string_width(text_line01);
	draw_text(x_point- text_width/2, y_point , text_line01);
	
	var text_line02 = "지금까지 내가 한 행동들은"
	var text_width = string_width(text_line02);
	draw_text(x_point- text_width/2, y_point  + y_distance, text_line02);
	
	var text_line03 = "전부 나의 자작극이였으며 "
	var text_width = string_width(text_line03);
	draw_text(x_point- text_width/2, y_point  + y_distance*2, text_line03);
	
	var text_line04 = "과거의 내가 만들어낸 가공의 세계를"
	var text_width = string_width(text_line04);
	draw_text(x_point- text_width/2, y_point  + y_distance*3, text_line04);
	
	var text_line05 = "기억을 지우고 반복하고 있던것 뿐이였다"
	var text_width = string_width(text_line05);
	draw_text(x_point- text_width/2, y_point  + y_distance*4, text_line05);
}

if text_02 == true
{
	var text_line01 = "그리고 마침내 결정했다"
	var text_width = string_width(text_line01);
	draw_text(x_point- text_width/2, y_point , text_line01);
	
	var text_line02 = "기억을 지우고 새로운 사람으로 시작한다고 해도"
	var text_width = string_width(text_line02);
	draw_text(x_point- text_width/2, y_point  + y_distance, text_line02);
	
	var text_line03 = "거기에 무슨 의미가 있을까"
	var text_width = string_width(text_line03);
	draw_text(x_point- text_width/2, y_point  + y_distance*2, text_line03);
	
	var text_line04 = "적어도 지금의 나는 거기에 의미를 느낄수 없다"
	var text_width = string_width(text_line04);
	draw_text(x_point- text_width/2, y_point  + y_distance*3, text_line04);
	
	var text_line05 = "더이상의 무의미한 연장은 사양한다"
	var text_width = string_width(text_line05);
	draw_text(x_point- text_width/2, y_point  + y_distance*4, text_line05);
}

if text_03 == true
{
	var text_line01 = "지금 이시간부로 나만의 세계는 끝난다"
	var text_width = string_width(text_line01);
	draw_text(x_point- text_width/2, y_point , text_line01);
	
	var text_line02 = "이 뒤의 일은..."
	var text_width = string_width(text_line02);
	draw_text(x_point- text_width/2, y_point  + y_distance, text_line02);
	
	var text_line03 = "내가 알바 아니다"
	var text_width = string_width(text_line03);
	draw_text(x_point- text_width/2, y_point  + y_distance*2, text_line03);
	
	var text_line04 = "어차피 내가 사라지면 끝이니까"
	var text_width = string_width(text_line04);
	draw_text(x_point- text_width/2, y_point  + y_distance*3, text_line04);
	
	var text_line05 = "생각해도 별로 의미 없겠지"
	var text_width = string_width(text_line05);
	draw_text(x_point- text_width/2, y_point  + y_distance*4, text_line05);
	
}

if text_04 == true
{
	var text_line01 = "나의 이야기는 끝나고"
	var text_width = string_width(text_line01);
	draw_text(x_point- text_width/2, y_point , text_line01);
	
	var text_line02 = "나의 세계도 끝난다"
	var text_width = string_width(text_line02);
	draw_text(x_point- text_width/2, y_point  + y_distance, text_line02);
	
	var text_line03 = "........."
	var text_width = string_width(text_line03);
	draw_text(x_point- text_width/2, y_point  + y_distance*2, text_line03);
	
	var text_line04 = "......"
	var text_width = string_width(text_line04);
	draw_text(x_point- text_width/2, y_point  + y_distance*3, text_line04);
	
	var text_line05 = "..."
	var text_width = string_width(text_line05);
	draw_text(x_point- text_width/2, y_point  + y_distance*4, text_line05);
	
}
