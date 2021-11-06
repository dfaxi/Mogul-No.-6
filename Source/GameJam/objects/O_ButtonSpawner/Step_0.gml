/// @description Insert description here
// You can write your code in this editor
if place_meeting(x, y - 1 , O_Ludwig){
	if variable_instance_get(id, "onButton") == false{
		variable_instance_set(id, "onButton", true);
		global.ButtonPressed = true;
	}
}
else {
	if variable_instance_get(id, "onButton") == true {
		variable_instance_set(id, "onButton", false);
		global.ButtonPressed = false;
	}
}
//show_debug_message(global.ButtonPressed);