global.camX = x;
global.camY = y;
global.halfViewWidth = camera_get_view_width(mainCamera) * 0.5;
global.halfViewHeight = camera_get_view_height(mainCamera) * 0.5;

if(!global.paused || global.tutorialEntrance){
	if(instance_exists(follow)){
		xTo = follow.x;
		yTo = follow.y;
	}

	x += (xTo - x) * .05;
	y += (yTo - y) * .05;

	x = clamp(x, halfViewWidth, room_width - halfViewWidth);
	y = clamp(y, halfViewHeight, room_height - halfViewHeight);

	camera_set_view_pos(mainCamera, x - halfViewWidth, y - halfViewHeight);

	layer_x("Background", x * 0.3);
	layer_x("Backgrounds_1", x * 0.35);
	layer_x("Backgrounds_2", x * 0.4);
	layer_x("Backgrounds_3", x * 0.45);
	layer_x("Backgrounds_4", x * 0.5);
	
}
