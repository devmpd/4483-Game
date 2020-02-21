/// @description Insert description here
// You can write your code in this editor

if(place_meeting(x, y, oPlayer)){
	showText = true;
	if(tid == -1){
		tid = instance_create_depth(x, y - 32, -1, oSignText);
		tid.text = "Druidic Temple";
	}

} else {
	showText = false;
	if(tid != -1 && instance_exists(tid)){
		instance_destroy(tid);
		tid = -1
	}
}