/// @description Insert description here
// You can write your code in this editor

if place_meeting(x, y - 1 , O_Ludwig){
	if variable_instance_get(id, "onLever") == false{
		variable_instance_set(id, "onLever", true);
		alarm[0] = 20;
	}
}
else {
	alarm[0] = -1;
	variable_instance_set(id, "onLever", false);
}
if !place_meeting(x, y + 1, O_LeverStopper2){
	if vspeed > 0 {
		O_Lever2.image_speed = 1;
	}
	else {
		O_Lever2.image_speed = 0;
		vspeed = 0;
	}
}
else {
	O_Lever2.image_speed = 0;
	vspeed = 0;
	}

