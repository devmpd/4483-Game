/// @description Insert description here
// You can write your code in this editor

if(position_meeting(mouse_x, mouse_y, id) && oPlayerSpider.form == 4){
	slope = (y - oPlayerSpider.y) / (x - oPlayerSpider.x);
	dx = x - oPlayerSpider.x;
	dy = y - oPlayerSpider.y;
	distance = sqrt(power(dx, 2) + power(dy, 2));

	if(dx < 0){
		xOff = -1;	
	} else {
		xOff = 1;	
	}
	
	if(dy < 0){
		yOff = -1;	
	} else {
		yOff = 1;	
	}
	
	if(distance > 300){
		xBad = x - ((300*(x-oPlayerSpider.x))/distance)
		yBad = y - ((300*(y-oPlayerSpider.y))/distance)
		oPlayerSpider.anchorX = xBad;
		oPlayerSpider.anchorY = yBad;
		oPlayerSpider.badSling = true;
	} else {
		oPlayerSpider.slinging = true;
		oPlayerSpider.hsp = 5 / abs(slope) * xOff;
		oPlayerSpider.vsp = 5 * yOff;
		oPlayerSpider.anchorX = x;
		oPlayerSpider.anchorY = y;
		show_debug_message(slope);
		show_debug_message(dx);
		show_debug_message(dy);
		show_debug_message(distance);
	}


}