global.camX = x;
global.camY = y;
global.halfViewWidth = camera_get_view_width(mainCamera) * 0.5;
global.halfViewHeight = camera_get_view_height(mainCamera) * 0.5;

if(instance_exists(follow)){
	xTo = follow.x;
	yTo = follow.y;
}

x += (xTo - x) * .05;
y += (yTo - y) * .05;

x = clamp(x, halfViewWidth, room_width - halfViewWidth);
y = clamp(y, halfViewHeight, room_height - halfViewHeight);

camera_set_view_pos(mainCamera, x - halfViewWidth, y - halfViewHeight);