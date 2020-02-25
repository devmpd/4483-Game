/// @description Insert description here
// You can write your code in this editor

// [Main, Bird, Snake, Rhino, Spider, Elephant, Dolphin]
forms[0] = "Main"
forms[1] = "Bird"
forms[2] = "Rabbit"
forms[3] = "Rhino"
forms[4] = "Spider"
forms[5] = "Elephant"
forms[6] = "Snake"

formIndex = 0;

xSpawn = x;

//initialize main form in center
formIcons[0] = instance_create_depth(xSpawn, y, -25, oFormIcon);
formIcons[0].form = 0;
xSpawn -= 144;

for(i = 1; i < array_length_1d(forms); i++){
	formIcons[i] = instance_create_depth(xSpawn, y, -25, oFormIcon);
	if(!global.formsAvailable[i]){
		formIcons[i].form = -1;
	} else {
		formIcons[i].form = i;
	}
	xSpawn += 48;
	if(xSpawn = x){
		xSpawn += 48;	
	}
}