event_inherited();

act_count = 0;
deactivate_count = 0;
dialog_count = 0;
diafalse_count = 0;

if global.language == "Korean"
{name_text = "병사장"}
if global.language == "English"
{name_text = "Soldier Captain"}

npc_namecol = c_blue;

dialog_endswitch = false;

defalt_sprite = NPC_vally_gardcaptain;
active_sprite = NPC_vally_gardcaptain_active;

if global.mainstream >= 40	&&	global.NPC24_dialog < 31
{global.NPC24_dialog = 31;}