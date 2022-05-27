
var type = async_load[? "event_type"];
var index = async_load[? "pad_index"];

if type == "gamepad discovered"
{
	show_debug_message("Gamepad finally connected : " + string(index));
}
else
{
	show_debug_message("Gamepad disconnected : " + string(index));
}

if gamepad_button_check(os_xboxone,gp_padr) or gamepad_axis_value(0, gp_axislh) > 0
{show_debug_message("is inputed");}

if gamepad_is_connected(os_xboxseriesxs)
{show_debug_message("xboxseriesxs is connected");}

if gamepad_is_connected(os_xboxone)
{show_debug_message("xboxone is connected");}

if gamepad_is_connected(os_ps3)
{show_debug_message("ps3 is connected");}
