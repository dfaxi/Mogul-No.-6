/// @description Insert description here
// You can write your code in this editor
if keyboard_check(ord("1")){
	game_restart();
}
var _cam_y = camera_get_view_y(view_camera[0]) ;
layer_y("Background", _cam_y * 0.15); 

if keyboard_check_pressed(vk_escape){
	options = true;
	global.control = false;
}
if options == true {
	counter += 1;
	if volume <= 1 && volume >= 0 && spot == spot1{
		if (keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"))) && volume >=.1 {
			volume = volume - .1;
			audio_master_gain(volume);
			volumeSpot = volumeSpot - 60;
		}
		if (keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"))) && volume <= .9 {
			 volume = volume + .1;
			audio_master_gain(volume);
			volumeSpot = volumeSpot + 60;
		}
		if keyboard_check(vk_down) || keyboard_check(ord("S")){
			audio_play_sound(A_Bounce, 1, 0);
			spot = spot2;
		}
	}
	if spot == spot2 {
		if keyboard_check(vk_enter){
			audio_play_sound(A_Bounce, 1, 0);
			game_save("save.dat");
			global.saved = true;
			game_end();
		}
		if keyboard_check(vk_up) || keyboard_check(ord("W")){
			audio_play_sound(A_Bounce, 1, 0);
			spot = spot1;
		}
	}
		
	if keyboard_check(vk_escape) && counter > 1{
		if keyboard_check_pressed(vk_escape){
			options = false;
			draw_clear(1);
			show_debug_message("clear");
			counter = 0;
			global.control = true;
		}
	}	
}