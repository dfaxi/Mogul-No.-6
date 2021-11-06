/// @description Insert description here
// You can write your code in this editor


down = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));
up = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
enter = keyboard_check(vk_enter);

if control == true{
	
if global.spot == global.spot2 {
	if up {
		global.spot = global.spot1;
		audio_play_sound(A_Bounce, 1, 0);
	}
	else if down {
		global.spot = global.spot3;
		audio_play_sound(A_Bounce, 1, 0);
	}
	else if enter {
		control = false;
		options = true;
		audio_play_sound(A_Bounce, 1, 0);
	}
}
if global.spot == global.spot1 {
	if down {
		global.spot = global.spot2;
		audio_play_sound(A_Bounce, 1, 0);
	}
	else if up {
		global.spot = global.spot1;
		audio_play_sound(A_Bounce, 1, 0);
	}
	else if enter {
		if global.saved == true{
		game_load("save.dat");
		}
		else room_goto(Base);
		global.control = true;
	}
}

if global.spot == global.spot3 {
	if up {
		global.spot = global.spot2;
		audio_play_sound(A_Bounce, 1, 0);
	}
	else if enter {
		game_end();
	}
}	

}
else {
	if volume <= 1 && volume >= 0{
		if keyboard_check_pressed(vk_pagedown) && volume >=.1 {
			volume = volume - .1;
			audio_master_gain(volume);
			volumeSpot = volumeSpot - 60;
		}
		if keyboard_check_pressed(vk_pageup)&& volume <= .9 {
			 volume = volume + .1;
			audio_master_gain(volume);
			volumeSpot = volumeSpot + 60;
		}
	}
	if keyboard_check(vk_escape){
		room_restart();
	}
}