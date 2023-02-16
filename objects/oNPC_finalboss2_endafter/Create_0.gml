image_xscale = -1;

state = "deactive";
state_num = 0;

act_count = 0;
deactivate_count = 0;
dialog_count = 0;
diafalse_count = 0;
act_switch = false;
contect = false;

if global.language == "Korean"
{name_text = "관리자"}
if global.language == "English"
{name_text = "Administrator"}

npc_namecol = c_purple;

dialog_endswitch = false;

defalt_sprite = finalboss_end;
active_sprite = finalboss_defalt3;
