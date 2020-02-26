/// @description Insert description here
// You can write your code in this editor

if(!global.paused){
	if(place_meeting(x, y, oPlayer)){
		tid = instance_create_depth(global.camX, global.camY + global.halfViewHeight - 60, -1, oTextbox);
		speech = ds_list_create();
		ds_list_add(speech, "You take a long drink of water...", "You feel restored.");
		tid.textList = speech;		
	}
}