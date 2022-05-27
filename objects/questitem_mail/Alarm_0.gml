
	global.Player_item = "Questmail";
	var text = instance_create_depth(x - 54, y - 64, 0, text_drawingob);
	text.text = output_message;
	repeat(7)
	{instance_create_layer(x, y, "Effects", oparticle_01);}
	
	audio_play_sound(SE_getitem, 1, false);
	
	instance_destroy();