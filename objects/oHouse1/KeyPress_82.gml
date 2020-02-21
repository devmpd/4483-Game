/// @description Insert description here
// You can write your code in this editor

if(place_meeting(x, y, oPlayer) && !instance_exists(oSignText)){
	tid = instance_create_depth(x, y - 32, -1, oSignText);
	tid.text = "It's locked."
	tid.alarm[0] = room_speed * 2
}