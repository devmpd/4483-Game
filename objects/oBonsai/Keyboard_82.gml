/// @description Insert description here
// You can write your code in this editor

if(place_meeting(x, y, oPlayer)){
	global.gotBonsai = true;
	tid = instance_create_depth(global.camX, global.camY + global.halfViewHeight - 60, -1, oTextbox);
	tid.finalLevel = true;
	speech = ds_list_create();
	ds_list_add(speech, "Congratulations!...", "You have completed the first trials...", "Continue your journey...\nThe world of Kami needs you...", "You received Demo Bonsai.");
	tid.textList = speech;
	instance_destroy();
}