/// @description Insert description here
// You can write your code in this editor
if place_meeting(x, y - 1 , O_Ludwig)||place_meeting(x, y - 2 , O_Ludwig){
	if variable_instance_get(id, "isPressed") == false {
		variable_instance_set(id, "isPressed", true);
		//alarm[0] = 5;
		vspeed = .25;
	}
}
else {
	variable_instance_set(id, "isPressed", false);
	vspeed = -.25;
	//alarm[0] = -1;
}
//show_debug_message(variable_instance_get(id, "isPressed"));