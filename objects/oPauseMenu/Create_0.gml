/// @description Insert description here
// You can write your code in this editor

x = global.camX;
show_debug_message(x);
y = global.camY;
show_debug_message(y);

resumeB = instance_create_depth(x, y, -100, oMenuItem);
resumeB.text = "Resume"
resumeB.thisItem = 0;
exitB = instance_create_depth(x, y + 48, -100, oMenuItem);
exitB.text = "Exit Game"
exitB.thisItem = 1;
destroy = false;