/// @description Insert description here
// You can write your code in this editor

// collission code


instance_destroy();
// destruction animation
instance_create_depth(x, y, -2, oPoof);
audio_play_sound(mWallExplosion, 10, false);