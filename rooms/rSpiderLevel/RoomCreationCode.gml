global.formsAvailable[0] = true;    //normal
global.formsAvailable[1] = true;    //bird
global.formsAvailable[2] = true;    //rabbit
global.formsAvailable[3] = false;   //rhino
global.formsAvailable[4] = true;    //spider
global.formsAvailable[5] = false;   //elephant
global.formsAvailable[6] = false;   //dolphin
global.currentPlayer = oPlayerSpider;

if(!global.doneSpiderLevel){
	tid = instance_create_depth(global.camX, global.camY, -1, oTextbox);
	speech = ds_list_create();
	ds_list_add(speech, "You've been given the spider form.\nTo use the web ability, right-click on an achor point.\nAnchors can be walls, platforms, or objects...", "You can use the ability multiple times while\nin the air.");
	tid.textList = speech;
}