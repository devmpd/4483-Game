left = keyboard_check(ord("Q"));
right = keyboard_check(ord("E"));
jump = keyboard_check(vk_space);

if(!global.paused){
	switch(form){
		//normal form
		case 0:{
			grv = 0.5;
			walksp = 4;
			jumpsp = -10;
			sprite_walking = sPlayerWalking;
			sprite_jumping = sPlayerJumping;
			sprite_standing = sPlayer;
			break;
		}
		//bird
		case 1:{
			walksp = 4;
			grv = 0;
			vsp = 0;
			jumpsp = 0;
			sprite_walking = sBirdFlying;
			sprite_jumping = sBirdFlying;
			sprite_standing = sBirdFlying;
			break;
		}
		//rabbit
		case 2:{
			walksp = 6;
			jumpsp = -12;
			grv = 0.4;
			sprite_walking = sRabbitWalking;
			sprite_standing = sRabbitStanding;
			sprite_jumping = sRabbitJumping;
			break;
		}
		//dolphin
		case 6: {
			walksp = 3;
			jumpsp = -5;
			grv = 0.01;
			sprite_walking = sDolphinSwimming;
			sprite_standing = sDolphinStill;
			sprite_jumping = sDolphinJumping;
			break;
		}
		default: {
			grv = 0.5;
			walksp = 4;
			jumpsp = -10;
			break;
		}
		
	}
	if mouse_check_button_pressed(mb_left){
		global.paused = true;
		tid = instance_create_depth(mouse_x, mouse_y, -20, oFormMenu);
	}
	
	var move = right - left;
	
	hsp = move * walksp;
	vsp = vsp + grv;

	if(place_meeting(x, y+1, oFloorWater) && jump){
		vsp = jumpsp;		
	}

	//Horizontal collision
	if(place_meeting(x+hsp, y, oFloorWater)){
		while(!place_meeting(x+sign(hsp), y, oFloorWater)){
			x = x + sign(hsp);		
		}
		hsp = 0;	
	}
	x = x + hsp;

	//Vertical collision
	if(place_meeting(x, y+vsp, oFloorWater)){
		while(!place_meeting(x, y+sign(vsp), oFloorWater)){
			y = y + sign(vsp);		
		}
		vsp = 0;	
	}
	y = y + vsp;

	//Animation
	if(!place_meeting(x, y+1, oFloorWater) && form != 1){
		sprite_index = sprite_jumping;
		image_speed = 0;
		if(sign(vsp) > 0){
			image_index = 1;
		} else {
			image_index = 0;
		}
	} else {
		image_speed = 1;
		if(hsp == 0){
			sprite_index = sprite_standing;	
		} else {
			sprite_index = sprite_walking;
		}
	}
	if(hsp != 0){
		image_xscale = sign(hsp);	
	}
} else {
	image_speed = 0;
	sprite_index = sprite_standing;
}
if(isTalking){
	if(form != 2){
		if(!place_meeting(x, y+1, oFloorWater) && form != 1){
			x = x + hsp;
			vsp = vsp + grv;
			y = y + vsp;	
		}	
	} else {
		if(!place_meeting(x, y+1, oFloorWater)){
			vsp = vsp + grv;
			y = y + vsp;
		}
	}
	
}