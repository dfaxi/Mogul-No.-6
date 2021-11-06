/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if global.Moon == 2 {
	
	msg = [
	["Did you fall?", "No. 20", -1],
	["Don't worry about it, yo.", "No. 20", -1]
	]
	global.maxHeight = 30000;
}

else if global.Moon == 3 {
	
	msg = [
	["Just jump, yo.", "No. 20", -1],
	]
}