event_inherited();

act_count = 0;
deactivate_count = 0;
dialog_count = 0;
diafalse_count = 0;

name_text = "길드장"
npc_namecol = c_blue;

dialog_endswitch = false;

defalt_sprite = NPC_village_43;
active_sprite = NPC_village_43_active;

if global.mainstream >= 60	&& global.NPC43_dialog < 17
{global.NPC43_dialog = 17;}