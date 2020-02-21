menuSelect = keyboard_check_pressed(ord("S")) - keyboard_check_pressed(ord("W"));
menuIndex = (menuIndex + menuSelect + menuLength) mod menuLength;

//Disable load and options for demo
if(menuSelect > 0 && menuIndex = 1){
	menuIndex = 3	
} else if(menuSelect < 0 && menuIndex = 2){
	menuIndex = 0;	
}

menuPrev = menuIndex;

