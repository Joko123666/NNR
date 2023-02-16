event_inherited();

act_count = 0;
deactivate_count = 0;
dialog_count = 0;
diafalse_count = 0;

if global.language == "Korean"
{name_text = "유적 관리인"}
if global.language == "English"
{name_text = "Ruins Manager"}

npc_namecol = c_blue;

dialog_endswitch = false;

defalt_sprite = NPC_village_44;
active_sprite = NPC_village_44_active;
image_size(2);