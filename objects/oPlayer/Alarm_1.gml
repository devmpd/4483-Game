/// @description Insert description here
// You can write your code in this editor

girlPosition = false;
autowalk = true;
with(oGirl){
	if(x < other.x){
		other.image_xscale = sign(-1);	
		other.girlLoc = x + 32;
		other.girlDir = -1;
	} else {
		other.image_xscale = sign(1);	
		other.girlLoc = x - 32;
		other.girlDir = 1;
	}
}