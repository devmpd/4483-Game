global.formsAvailable[0] = true;	//normal
global.formsAvailable[1] = true;	//bird
global.formsAvailable[2] = true;	//rabbit
global.formsAvailable[3] = false;	//rhino
global.formsAvailable[4] = false;	//spider
global.formsAvailable[5] = false;	//elephant
global.formsAvailable[6] = true;	//dolphin

global.currentPlayer = oPlayerDolphin;
if(!global.doneWaterLevel){
	tid = instance_create_depth(global.camX, global.camY, -1, oTextbox);
	speech = ds_list_create();
	ds_list_add(speech, "You've been given the dolphin form.\nIn this form, you'll be able to swim...", "But be careful, if you'll drown in the water\nif in your normal form.");
	tid.textList = speech;
}