/// @description revert to normal form
// You can write your code in this editor

if(!global.paused){
	instance_create_depth(x, y, -2, oPoof);
	form = 0;
} 

else {
	alarm[3] = room_speed * 2	
}
