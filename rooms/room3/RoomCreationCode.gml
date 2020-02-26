global.formsAvailable[1] = true;
global.formsAvailable[2] = true;
global.tutorialEntrance = true;


if(!global.doneTutorialIntro){
	tid = instance_create_depth(global.camX, global.camY, -1, oTextbox);
	speech = ds_list_create();
	ds_list_add(speech, "Welcome to your training, Daba...", 
	"Here you will practice some of the skills\nyou'll need throughout your adventure...",
	"The puzzles you'll encounter will require\nyou to use all of the animal forms you learn. For\nthis tutorial, you've been temporarily given two new \nforms. The bird and the rabbit...",
	"It's important to note that you can only stay\nin one form for a few seconds before\nyou'll fold back to your own form...",
	"You'll notice the gap in front of you is too\nwide to jump across. Using the left mouse button\nwhile mid jump, select the bird to fold\nyourself and fly across.")
	tid.textList = speech;
	tid.tutorialIntro = true;
}