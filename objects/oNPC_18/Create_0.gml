event_inherited();

act_count = 0;
deactivate_count = 0;
dialog_count = 0;

defalt_sprite = NPC_village_18;
active_sprite = NPC_village_18_active;

name_text = "아리에";

if global.NPC28_dialog > 0
{instance_destroy();}