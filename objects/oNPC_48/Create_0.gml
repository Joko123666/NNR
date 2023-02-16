event_inherited();

act_count = 0;
deactivate_count = 0;
dialog_count = 0;
diafalse_count = 0;

if global.language == "Korean"
{name_text = "길드 직원"}
if global.language == "English"
{name_text = "Guild Staff"}

npc_namecol = c_blue;

dialog_endswitch = false;

defalt_sprite = NPC_village_48;
active_sprite = NPC_village_48_active;

if global.NPC48_dialog < 30	&& global.NPC48_dialog > 11
{global.NPC48_dialog = 12;}