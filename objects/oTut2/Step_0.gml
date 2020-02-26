/// @description Insert description here
// You can write your code in this editor

if(!global.doneTutorialTwo && place_meeting(x, y, oPlayer)){
	tid = instance_create_depth(global.camX, global.camY + global.halfViewHeight - 60, -1, oTextbox);
	speech = ds_list_create();
	ds_list_add(speech, "Great job!...", "Often times, puzzles will require you to combine\nthe abilities of multiple forms...", 
	"To get to the next platform, try\njumping in rabbit form, and once at the peak\nof the jump, immediately switch to the bird form\nto fly the remainder of the distance.");
	tid.textList = speech;
	tid.tutorialTwo = true;
}