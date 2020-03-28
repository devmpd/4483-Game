/// @description Create main camera
mainCamera = view_camera[0];
follow = global.currentPlayer;

halfViewWidth = camera_get_view_width(mainCamera) * 0.5;
halfViewHeight = camera_get_view_height(mainCamera) * 0.5;
xTo = x;
yTo = y;

