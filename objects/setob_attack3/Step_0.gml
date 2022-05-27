
if place_meeting(x, y, oPlayer) && oPlayer.input.interaction
{
	oPlayer.attackskill_set = 3;
	audio_play_sound(SE_system03, 1, false);
}