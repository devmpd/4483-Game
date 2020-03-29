global.currentPlayer = false;
global.levelSelectPos = 0;
global.initialWalk = true;
global.paused = false;
global.camX = 0;
global.camY = 0;
global.halfViewWidth = 0;
global.halfViewHeight = 0;
global.talkedToZara = false;
global.talkedToGirl = false;
global.tutorialEntrance = false;
global.doneTutorialIntro = false;
global.doneTutorialOne = false;
global.doneTutorialTwo = false;
global.tutorialFinished = true;
global.receivedBird = false;
global.formsAvailable[0] = true    //normal
global.formsAvailable[1] = false   //bird
global.formsAvailable[2] = false   //rabbit
global.formsAvailable[3] = false   //rhino
global.formsAvailable[4] = false   //spider
global.formsAvailable[5] = false   //elephant
global.formsAvailable[6] = false   //dolphin
window_set_caption("Origami Druid");
room_goto_next();