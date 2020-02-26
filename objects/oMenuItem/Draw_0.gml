/// @description Insert description here
// You can write your code in this editor


draw_self();
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fontMenu);
if(thisItem = -1){
	draw_set_color(c_gray);	
}
else if(position_meeting(mouse_x, mouse_y, id)){
	draw_set_color(c_green)
} else{
	draw_set_color(c_white);	
}
draw_text(x, y, text);
draw_set_font(-1);
draw_set_color(c_white);