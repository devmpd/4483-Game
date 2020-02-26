/// @description End tutorial
// You can write your code in this editor

if(place_meeting(x, y, oPlayer)){
	global.tutorialFinished = true;
	global.formsAvailable[2] = false;
	room_goto(room2);
}
