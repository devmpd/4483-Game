draw_set_halign(fa_center);
draw_set_color(c_ltgray);

for(var i = 0; i < menuLength; i++) {
	draw_set_color(c_white);
	if (i == 1 || i == 2) draw_set_color(c_gray);
	if (menuIndex == i) draw_set_color(c_red);
	draw_text(menuX, menuY + menuItemSpacing * i, menuItems[i]);
}