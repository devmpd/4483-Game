/// @description Insert description here
// You can write your code in this editor

if(currentPos > 0){
	currentPos -= 1;
	x = levelPoints[currentPos,0];
	y = levelPoints[currentPos,1];
	show_debug_message(currentPos);
} else if(currentPos = 0){
	room_goto(room1);
}