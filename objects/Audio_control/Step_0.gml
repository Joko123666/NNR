
if keyboard_check(vk_right)
{
	if sound_volume < 0.99
		{sound_volume += 0.01;}
	audio_group_set_gain(audiogroup_default, sound_volume, 5);
}

if keyboard_check(vk_left)
{
	if sound_volume > 0
		{sound_volume -= 0.01;}
	audio_group_set_gain(audiogroup_default, sound_volume, 5);
}
