/// @description Insert description here
// You can write your code in this editor

if(place_meeting(x, y, oPlayer) && !global.talkedToZara){
	tid = instance_create_depth(global.camX, global.camY, -1, oTextbox);
	speech = ds_list_create();
	ds_list_add(speech, "Hello Kona. As I'm sure you've heard,\nyour arrival here is fortunate...", 
	"As one of Paper's most promising druids,\nyou're our only hope in defeating Klux and\nbringing peace to the land...",
	"The road ahead of you will be difficult.\nI think it wise to practice your skills before\nheading out on your adventure...",
	"As an oragami druid, by calling on the animal spirits\nyou have the ability to fold yourself into\ntheir forms as I have done...",
	"Unfortunately, Kona has enslaved the animals,\ndiminishing their spiritual energies. One of your\ntasks will be to free the animals. As you do,\n you will become more powerful...",
	"For now, drink this essence. It will allow you to\nfold yourself temporarily for the purposes of\nthis practice...",
	"Let's begin.");
	tid.textList = speech;
	tid.talkingToZara = true;
}