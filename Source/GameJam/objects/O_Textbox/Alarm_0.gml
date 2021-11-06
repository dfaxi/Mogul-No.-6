/// @description Insert description here
// You can write your code in this editor
if (messageID < ds_list_size(messages) - 1) {
		messageID++;
		messageChar = 0;
		
	}
	
	else {
		alarm[1] = 120;
		global.isText = false;
		instance_destroy();
		global.Moon = 3;
	}
		alarm[0] = -1;
		global.isText = false;
		if global.maxHeight < 1500{
			global.Moon = 2;
		}
		else global.Moon = 3;
	