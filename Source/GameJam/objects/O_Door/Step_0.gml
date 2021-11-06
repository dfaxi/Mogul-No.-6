/// @description Insert description here
// You can write your code in this editor
if global.LeverPulled == true {
	instance_destroy();
	instance_create_layer(x, y, "Instances_1", O_Door2);
}
else {
	image_index = 0;
	solid = true;
}