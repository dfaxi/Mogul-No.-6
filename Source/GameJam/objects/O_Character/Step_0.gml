/// @description Insert description here
// You can write your code in this editor
if distance_to_object(O_Ludwig) < 50 {
if (!instance_exists(O_Textbox)) {
	
	var _tb = instance_create_layer(0, 0, "Instances", O_Textbox);
	
	var _list = _tb.messages;
	for (var i = 0; i < array_length_1d(msg); i++) {
		var _arr = msg[i];
		
		ds_list_add(_list, _arr);
	}
}

}
