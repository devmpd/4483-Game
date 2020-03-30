/// @description Insert description here
// You can write your code in this editor

if(place_meeting(x, y, oPlayerSpider) && !global.spiderUpgrade){
	global.spiderUpgrade = true;
	tid = instance_create_depth(global.camX, global.camY + global.halfViewHeight - 60, -1, oTextbox);
	speech = ds_list_create();
	ds_list_add(speech, "You found Spider Form Upgrade 1!...", "You can now stay in spider form twice as long!");
	tid.textList = speech;
}