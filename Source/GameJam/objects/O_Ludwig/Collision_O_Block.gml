
if (collision_point(x - 8, y + 19, O_Block, true, false)||collision_point(x + 8, y + 20, O_Block, true, false))&&!collision_point(x, y + 20, O_Block, true, false){
	hspeed =  .1 * hspeed;
}

vspeed =  .1 * vspeed;

if vspeed < 0 && !audio_is_playing(A_Bounce){
	audio_play_sound(A_Bounce, 1, 0);
}