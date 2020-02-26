/// @description Insert description here
// You can write your code in this editor

if(ds_list_size(textList) > 0){
	text = ds_list_find_value(textList, 0);
	ds_list_delete(textList, 0);
} else {
	with(oPlayer){
		isTalking = false;	
	}
	if(talkingToZara){
		talkingToZara = false;
		global.talkedToZara = true;
		instance_destroy(oTextbox);
		room_goto(room3);	
	}
	if(!global.talkedToGirl){
		global.talkedToGirl = true;
	}
	if(tutorialIntro){
		tutorialIntro = false;
		global.doneTutorialIntro = true;
		global.tutorialEntrance = false;
	}
	if(tutorialOne){
		tutorialOne = false;
		global.doneTutorialOne = true;
	}
	if(tutorialTwo){
		tutorialTwo = false;
		global.doneTutorialTwo = true;
	}
	global.paused = false;
	instance_destroy(oTextbox);
}