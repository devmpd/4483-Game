/// @description Insert description here
// You can write your code in this editor

vsp = 10
//Vertical collision
if(place_meeting(x, y+vsp, oFloor)){
	while(!place_meeting(x, y+sign(vsp), oFloor)){
		y = y + sign(vsp);		
	}
	vsp = 0;	
}
y = y + vsp;