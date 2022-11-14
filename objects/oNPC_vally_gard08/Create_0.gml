side = irandom(1);


act_count = 0;
deactivate_count = 1;
dialog_count = 0;

defalt_sprite = NPC_vally_gard01;
active_sprite = NPC_vally_gard01_active;

if global.mainstream > 50
{instance_destroy();}