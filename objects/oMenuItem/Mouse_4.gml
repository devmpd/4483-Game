/// @description Insert description here
// You can write your code in this editor

if(position_meeting(mouse_x, mouse_y, id)){
	if(!instance_exists(oControls)){
		switch(thisItem){
			case 0: {
				with(oPauseMenu){
					destroy = true;	
				}
				break;
			}
			case 1: {
				if(!instance_exists(oControls)){
					game_end();
					break;
				}
			}
			case 2: {
				if(!instance_exists(oControls)){	
					room_goto_next();
					break;
				}
			}
			case 3: {
				if(!instance_exists(oControls)){
					instance_create_depth(room_width/2, room_height/2, -5, oControls);
					break;
				}
			}
		}
	} else {
		if(thisItem = 4){
			instance_destroy(id);
			instance_destroy(oControls);
		}
	}
}