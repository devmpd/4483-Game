/// @description Insert description here
// You can write your code in this editor

draw_self();

if(slinging){
	draw_line_width_color(x, y, anchorX, anchorY, 2, c_white, c_white);	
}

if(badSling){
	draw_line_width_color(x, y, anchorX, anchorY, 2, c_white, c_white);
	badSling = false;
}