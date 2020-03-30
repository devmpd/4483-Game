/// @description Insert description here
// You can write your code in this editor


if(mouse_check_button_released(mb_left)){
	with(global.currentPlayer){
		if(other.formIndex != -1 && form != other.formIndex){
			form = other.formIndex;
			instance_create_depth(x, y, -2, oPoof);
			if(form != 0 && form != 6 && form != 4){
				alarm[3] = room_speed * 3;
			} else if (form == 6) {
				alarm[3] = room_speed * 6;	
			} else if (form == 4) {
				if(!global.spiderUpgrade) {
					alarm[3] = room_speed * 3;	
				} else {
					alarm[3] = room_speed * 6;
				}
			}
		}
	}
	global.paused = false;
	for(i = 0; i < array_length_1d(forms); i++){
		instance_destroy(formIcons[i]);	
	}
	instance_destroy();
}