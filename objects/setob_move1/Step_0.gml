
if place_meeting(x, y, oPlayer) && oPlayer.input.interaction
{
	oPlayer.moveskill_set = 1;
	audio_play_sound(SE_system03, 1, false);
}