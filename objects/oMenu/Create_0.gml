/*
menuX = x;
menuY = y;
menuItemSpacing = 32;

// buttons
menuItems[0] = "New Game";
menuItems[1] = "Load Game";
menuItems[2] = "Options";
menuItems[3] = "Exit";
menuLength = array_length_1d(menuItems);

menuIndex = 0;
menuPrev = 0;
*/

newGameB = instance_create_depth(x, y - 20, 0, oMenuItem);
newGameB.thisItem = 2;
newGameB.text = "New Game";
loadGameB = instance_create_depth(x, y + 20, 0, oMenuItem);
loadGameB.text = "Load Game";
loadGameB.thisItem = -1;
controlsB = instance_create_depth(x, y + 60, 0, oMenuItem);
controlsB.thisItem = 3;
controlsB.text = "Controls";
optionsB = instance_create_depth(x, y + 100, 0, oMenuItem);
optionsB.text = "Options";
optionsB.thisItem = -1
exitB = instance_create_depth(x, y + 140, 0, oMenuItem);
exitB.thisItem = 1;
exitB.text = "Exit";