/// @description Insert description here
// You can write your code in this editor

levelPoints[0, 0] = 52;
levelPoints[0, 1] = 341;
levelPoints[1, 0] = 325;
levelPoints[1, 1] = 272;
levelPoints[2, 0] = 549; 
levelPoints[2, 1] = 401;
levelPoints[3, 0] = 790;
levelPoints[3, 1] = 482;
levelPoints[4, 0] = 933;
levelPoints[4, 1] = 287;

currentPos = global.levelSelectPos;
x = levelPoints[currentPos, 0];
y = levelPoints[currentPos, 1];

levelRooms = ["Level1", "Level2", rSpiderLevel, "Level4", "Level5"]
