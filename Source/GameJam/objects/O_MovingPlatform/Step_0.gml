/// @description Insert description here
// You can write your code in this editor
 if global.ButtonPressed == true {
	 hspeed = 1;
 }
 else {
	 hspeed = - 1;
 }

if place_meeting(x + 1, y, O_Ludwig){
	O_Ludwig.x = O_Ludwig.x + 1;
}