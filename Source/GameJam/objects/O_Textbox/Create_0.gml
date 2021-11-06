/// @description Insert description here
// You can write your code in this editor
messages = ds_list_create();
messageID = 0;

messageText = "";
messageChar = 0;
messageSpeed = 0.3;

enum MSG {
	TEXT,
	NAME,
	IMAGE 
}
var _guiH = 75;
var _guiW = 250;

//var _guiH = display_get_gui_height();
//var _guiW = display_get_gui_width();


//height = floor(_guiH * 0.1);
width = _guiW ;
//height = floor(_guiH * 0.5);
height = _guiH;
x = global.nearest.x - 40;
y = global.nearest.y - 75;

padding = 10;


	