/// @description Insert description here
// You can write your code in this editor


down = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));
up = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
enter = keyboard_check(vk_enter);

if global.spot == global.spot2 {
	if up {
		global.spot = global.spot1;
		audio_play_sound(A_Bounce, 1, 0);
	}
	else if down {
		global.spot = global.spot3;
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
		room_goto(Base);
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
