/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited()
if global.endscene == false && distance_to_object(O_Ludwig) < 50{
global.endscene = true;
alarm[0] = 450;
}


