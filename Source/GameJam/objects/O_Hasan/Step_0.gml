/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if variable_instance_get(id, "counter") == 2 {
	alarm[0] = 1450;
	msg = [
	["What a f*****g LIAR dude!", "No. 13", -1],
	["What a f*****g WEASELY, little LIAR dude!", "No. 13", -1],
	]
	variable_instance_set(id, "counter", 3);
}

if variable_instance_get(id, "counter") == 1{
	msg = [
	["What's up, No. 6?", "No. 13", -1],
	["Still trying to make it to the top?", "No. 13", -1],
	["That's sick, bro.", "No. 13", -1],
	["Yeah... I'm too busy doing homeowner things.", "No. 13", -1],
	["...", "No. 13", -1],
	["Hey, you think I could get reimbursed for the other day?", "No. 13", -1],
	["No?", "No. 13", -1]
	]
	variable_instance_set(id, "counter", 2);
}