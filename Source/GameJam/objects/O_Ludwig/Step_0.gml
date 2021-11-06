/// @description Insert description here
// You can write your code in this editor
if y < global.maxHeight {
	global.maxHeight = y
}
show_debug_message(global.maxHeight);

global.nearest = instance_nearest(x,y, O_Character);

var Left = keyboard_check(ord("A")) || keyboard_check(vk_left);
var Right = keyboard_check(ord("D")) || keyboard_check(vk_right);

if place_meeting(x, y + 1, O_MovingPlatform) {
	hspeed = clamp(hspeed, -7, 5);
}	
else {
hspeed = clamp(hspeed, -6, 6);
}
vspeed = clamp(vspeed, -7, 10);

//movement
if global.control == true {

if global.isSliding == false && global.isCrumpled == false{
	if Left == true{
		if vspeed <= 0 {
			if global.isJumping == false{
				if place_meeting(x + hspeed - 1 , y, O_Block){
					audio_play_sound(A_Bounce, 2, 0)
					hspeed = - .3 * hspeed;
					x = x + 2
				}
				else if hspeed > 0 {
					if global.onIce == false {
						hspeed = hspeed * .8;
					}
					else {
						hspeed = hspeed * .999;
					}
				}
				hspeed = hspeed -.06
			}
		}
		sprite_index = S_LudRun;
		image_xscale = -1;
	}
	else if Right == true{
		if vspeed <= 0 {
			if global.isJumping == false{
				if place_meeting(x + hspeed + 1 , y, O_Block){
					audio_play_sound(A_Bounce, 1, 0)
					hspeed = - .3* hspeed;
					x = x - 2
				}
				else if hspeed < 0 {
					if global.onIce == false {
						hspeed = hspeed * .8;
					}
					else {
						hspeed = hspeed * .995;
					}
				}
				hspeed = hspeed + .06
			}
		}
		sprite_index = S_LudRun;
		image_xscale = 1;
	}
	else {
		sprite_index = S_LudIdle;
		image_xscale = 1;
		if global.isJumping == false{
			if hspeed > 0 || hspeed < 0 {
				if global.onIce == false {
					if place_meeting(x, y + 1, O_MovingPlatform) {
						hspeed = (O_MovingPlatform.hspeed);
					}
					else if place_meeting(x + hspeed + 1 , y, O_Block){
					hspeed = - .3* hspeed;
					x = x - 2
					}
					else if place_meeting(x + hspeed - 1 , y, O_Block){

					hspeed = - .3* hspeed;
					x = x + 2
					}
					else {
						hspeed = hspeed * .8;
					}
				}
				else {
					hspeed = hspeed * .995;
				}
			}
			else {
				hspeed = 0;
				if place_meeting(x, y + 1, O_MovingPlatform) {
							hspeed = -1;
						}
			}
		}	
	}

//jump

	if keyboard_check_pressed(vk_space){
		if global.isJumping == false {
			audio_play_sound(A_Jump, 1, 0);
			global.onIce = false;
			global.isJumping = true; 
			if abs(hspeed) < 6{
				vspeed = -abs(hspeed) - 3;
			}
			else {
				vspeed = -7;
			}
		}
	}
}

//falling

if place_meeting(x, y + vspeed + 1 , O_Block){
	if (vspeed >= 10 && global.isCrumpled == false) || global.isSliding == true{
			global.isCrumpled = true;	
		}
	if global.isSliding == true || global.isCrumpled == true{
		hspeed = hspeed * .9;
	}
	if place_meeting(x, y + vspeed + 1, O_IceBlock){
		global.onIce = true;
	}
	else {
		global.onIce = false;
	}
	if place_meeting(x, y + 1, O_Block){
		if !audio_is_playing(A_Bounce)&&vspeed > 0{
			audio_play_sound(A_Bounce, 1, 0);
		}
		global.isJumping = false;
		vspeed = 0;
		gravity = 0;
	}
}
else {
	global.isJumping = true
	gravity = .2;	
}

if global.isJumping == true{
	if place_meeting(x - 1, y, O_Block)&&place_meeting(x, y + 1, O_Block){
		x = x + 1;
		y = y -1;
	}
	if place_meeting(x + 1, y, O_Block)&&place_meeting(x, y + 1, O_Block){
		x = x - 1;
		y = y -1;
	}
	if place_meeting(x + hspeed - 1, y, O_Block){
		audio_play_sound(A_Bounce, 1, 0)
		x = x + 1;
		hspeed = - .3 * hspeed;
	}
	if place_meeting(x + hspeed + 1, y, O_Block){
		audio_play_sound(A_Bounce, 1, 0)
		x = x - 1
		hspeed = - .3* hspeed;
	}

}

if place_meeting(x + hspeed - 2, y + vspeed , O_RampLeft)||place_meeting(x + hspeed - 1, y + vspeed + 1, O_RampLeft){
	hspeed = 3;
	vspeed = 3;
	sprite_index = S_LudSlide;
	image_xscale = -1;
	global.isSliding = true;
	global.isJumping = false;
}
if collision_point(x + 8, y + 18, O_RampRight, true, false)||(place_meeting(x + hspeed + 1, y + vspeed + 1, O_RampRight)){
	hspeed = - 3;
	vspeed = 3;
	sprite_index = S_LudSlide;
	global.isSliding = true;
	global.isJumping = false;
}

if global.isCrumpled == true {
	if !audio_is_playing(A_Crumple)&&global.canPlayCrumple == true {
		global.canPlayCrumple = false;
		audio_play_sound(A_Crumple,3, 0);
	}
	sprite_index = S_LudCrumple;
	if hspeed == 0 && vspeed == 0{
		if keyboard_check(vk_space) {
			alarm[0] = 10;
		}
	}
}

}

