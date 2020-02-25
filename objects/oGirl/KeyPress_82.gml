/// @description Insert description here
// You can write your code in this editor

if(!global.paused){
	
	if(place_meeting(x, y, oPlayer)){
		tid = instance_create_depth(global.camX, global.camY + global.halfViewHeight - 60, -1, oTextbox);
		speech = ds_list_create();
		ds_list_add(speech, "Please, go to the temple!\nTime is of the essence!");
		tid.textList = speech;
	}
}
