/// @description Insert description here
// You can write your code in this editor

if(ds_list_size(textList) > 0){
	text = ds_list_find_value(textList, 0);
	ds_list_delete(textList, 0);
} else {
	instance_destroy();
	global.paused = false;
}