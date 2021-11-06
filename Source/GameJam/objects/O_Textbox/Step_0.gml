/// @description Insert description here
// You can write your code in this editor
var _arr = messages[| messageID];

var _text = _arr[MSG.TEXT];

messageText = string_copy(_text, 1, messageChar);

if (messageChar <= string_length(_text)) {
	messageChar += messageSpeed;
	if !audio_is_playing(A_Talk) {
		audio_play_sound(A_Talk, 2 , 0);
	}
}

else {
	if global.isText == false {
		global.isText = true;
		alarm[0] = 120;

	}
}
