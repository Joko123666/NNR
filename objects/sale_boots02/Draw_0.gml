
draw_self();

var text = item_cost;
var text_width = string_width(text);
draw_text(x - text_width/2, y - 13, text);

if contect == true
{draw_sprite(UI_itemshop_target, 0, x, y - 38);}