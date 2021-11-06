/// @description Insert description here
// You can write your code in this editor
if room == Mansion {
	if O_Ludwig.y < 1000 {
		O_Ludwig.y = 2496
		room_goto(Cliffside);
	}
	else if y > 1000{
		room_goto(Base);
	O_Ludwig.y = 0;
	}
}
if room == Base {
	room_goto(Mansion);
	O_Ludwig.y = 2496;
}
if room == Cliffside {
	room_goto(Mansion);
	O_Ludwig.y = 0;
}
global.maxHeight = 0;