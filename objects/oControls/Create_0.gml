/// @description Insert description here
// You can write your code in this editor

text = "Move Right: E\nMove Left: Q\nJump: Space\nInteract/Talk: R\nForm Menu: Left Mouse\nPause: Esc";
ok = instance_create_depth(x, y + 200, -10, oMenuItem)
ok.thisItem = 4;
ok.text = "OK";