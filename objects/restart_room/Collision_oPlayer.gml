if oPlayer.state != "Death"
{
	oPlayer.HP = 0;
	create_particle(x + random_range(-32, 32), y + random_range(-32, 32), oparticle_02, 8 + irandom(4))
}


fade_toroom(room, 20, c_black);
global.effect_fadeout = true;