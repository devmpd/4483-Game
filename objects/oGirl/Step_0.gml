/// @description Insert description here
// You can write your code in this editor
if(isTalking){
	with(oPlayer){
		if(x < other.x){
			other.image_xscale = sign(-1);	
		} else {
			other.image_xscale = sign(1);	
		}
	}
}
