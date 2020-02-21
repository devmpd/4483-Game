left = keyboard_check(ord("Q"));
right = keyboard_check(ord("E"));
jump = keyboard_check(vk_space);

if(!global.paused){
	var move = right - left;
	
	if(global.initialWalk && move != 0){
		alarm[0] = (room_speed * 0.5);
		global.initialWalk = false;
	}
	hsp = move * walksp;
	vsp = vsp + grv;

	if(place_meeting(x, y+1, oFloor) && jump){
		vsp = -10;		
	}

	//Horizontal collision
	if(place_meeting(x+hsp, y, oFloor)){
		while(!place_meeting(x+sign(hsp), y, oFloor)){
			x = x + sign(hsp);		
		}
		hsp = 0;	
	}
	x = x + hsp;

	//Vertical collision
	if(place_meeting(x, y+vsp, oFloor)){
		while(!place_meeting(x, y+sign(vsp), oFloor)){
			y = y + sign(vsp);		
		}
		vsp = 0;	
	}
	y = y + vsp;

	//Animation
	if(!place_meeting(x, y+1, oFloor)){
		sprite_index = sPlayerJumping;
		image_speed = 0;
		if(sign(vsp) > 0){
			image_index = 1;
		} else {
			image_index = 0;
		}
	} else {
		image_speed = 1;
		if(hsp == 0){
			sprite_index = sPlayer;	
		} else {
			sprite_index = sPlayerWalking;
		}
	}
	if(hsp != 0){
		image_xscale = sign(hsp);	
	}
} else {
	if(girlTalking && girlPosition == false){
		image_speed = 1;
		sprite_index = sPlayerWalking;
		if(x > girlLoc){
			x = x + ((walksp - 2) * -1);
		} else if(x < girlLoc){
			x = x + ((walksp -2) * 1);
		} else {
			girlPosition = true;	
			sprite_index = sPlayer;
			autowalk = false;
		}
	}
}
