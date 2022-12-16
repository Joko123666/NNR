if (HP <= 10) && phase_state == "Phase_1"
{ 
	HP = 1;
	state = "Death";
}
if (HP <= 100) && phase_state == "Phase_2"
{ 
	HP = 50;
}