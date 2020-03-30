/// @description Insert description here
// You can write your code in this editor


if(place_meeting(x - 20, y, oPlayerRhino) && oPlayerRhino.form == 3){
	instance_destroy();
	audio_play_sound(mWallExplosion, 10, false);
}
// destruction animation
