global.formsAvailable[0] = true;    //normal
global.formsAvailable[1] = true;    //bird
global.formsAvailable[2] = true;    //rabbit
global.formsAvailable[3] = false;   //rhino
global.formsAvailable[4] = false;    //spider
global.formsAvailable[5] = true;   //elephant
global.formsAvailable[6] = false;   //dolphin
global.currentPlayer = oPlayerElephant;

if(!global.doneElephantLevel){
	tid = instance_create_depth(global.camX, global.camY, -1, oTextbox);
	speech = ds_list_create();
	ds_list_add(speech, "You've been given the elpehant form.\nTo use the water ability, press r.\nYou can use this ability to put out fire...", "But beware, fire will kill you.");
	tid.textList = speech;
}