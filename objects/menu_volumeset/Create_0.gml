
state = "Menu1";
input = instance_create_layer(0, 0, "Instances", oInputUI);


x = 0;
y = 0;

x_minimum = 108;
x_maximum = 212;
x_range = x_maximum - x_minimum;

sound_volume = global.gamevolume;
audio_group_load(audiogroup_default);
audio_group_set_gain(audiogroup_default, sound_volume, 5);

slider_x_point = x_minimum + (x_range * sound_volume);
slider_y_point = 80;


x_point = 103;
y_point = 80;

x_point2 = 128;
y_point2 = 144;


if room == Title
{
	image_xscale = 4; 
	image_yscale = 4;
	x_minimum = 216 * 2;
	x_maximum = 424 * 2;
	x_range = x_maximum - x_minimum;
	slider_x_point = x_minimum + (x_range * sound_volume);
	slider_y_point = 160 * 2;


	x_point = 206 * 2;
	y_point = 160 * 2;

	x_point2 = 256 * 2;
	y_point2 = 288 * 2;
}
