/// @description Insert description here
// You can write your code in this editor

if(place_meeting(x, y, oPlayerElephant)){
	global.doneElephantLevel = true;
	room_goto(levelSelectRoom);
}