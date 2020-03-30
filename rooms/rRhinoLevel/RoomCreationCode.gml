global.formsAvailable[0] = true;    //normal
global.formsAvailable[1] = true;    //bird
global.formsAvailable[2] = true;    //rabbit
global.formsAvailable[3] = true;   //rhino
global.formsAvailable[4] = false;    //spider
global.formsAvailable[5] = false;   //elephant
global.formsAvailable[6] = false;   //dolphin
global.currentPlayer = oPlayerRhino;

if(!global.doneRhinoLevel){
	tid = instance_create_depth(global.camX, global.camY, -1, oTextbox);
	speech = ds_list_create();
	ds_list_add(speech, "You've been given the rhino form.\nTo use the horn attack ability, press r...", "With this ability, you can break walls and\nother barriers.");
	tid.textList = speech;
}