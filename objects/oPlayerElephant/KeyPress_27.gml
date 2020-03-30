/// @description Insert description here
// You can write your code in this editor

if(!global.paused){
	global.paused = true;	
	instance_create_depth(global.camX, global.camY, -99, oPauseMenu);
}