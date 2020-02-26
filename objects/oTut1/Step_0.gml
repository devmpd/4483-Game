/// @description Insert description here
// You can write your code in this editor

if(!global.doneTutorialOne && place_meeting(x, y, oPlayer)){
	tid = instance_create_depth(global.camX, global.camY + global.halfViewHeight - 60, -1, oTextbox);
	speech = ds_list_create();
	ds_list_add(speech, "Awesome!\nDifferent forms have different abilities and will\nall have their place in your adventure...",
	"Try using the rabbit form to jump to the next platform.");
	tid.textList = speech;
	tid.tutorialOne = true;
}