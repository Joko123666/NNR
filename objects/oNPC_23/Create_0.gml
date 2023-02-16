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

defalt_sprite = NPC_village_23;
active_sprite = NPC_village_23_active;