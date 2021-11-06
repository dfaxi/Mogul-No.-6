/// @description Insert description here
// You can write your code in this editor
if keyboard_check(ord("1")){
	game_restart();
}
var _cam_y = camera_get_view_y(view_camera[0]) ;
layer_y("Background", _cam_y * 0.23); 