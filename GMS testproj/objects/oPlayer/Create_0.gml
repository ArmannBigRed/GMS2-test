/// @description Init

//first costume of the level
initialCostume = "blue";
currentCostume = initialCostume;
nextFrame = true;

//movement on the grid
rightLeftMove = 0;
rightLeftMove = 0;

//time to slide alter second number for faster or slower movement
slide = 1/16;

gridScale = 64;

//Where oPlayer is on the grid
gridX = round(x/gridScale);
gridY = round(y/gridScale);
//moveTo
toX = gridX;
toY = gridY;
//where you are on the grid
x = gridX * gridScale;
y = gridY * gridScale;

blinkInit();
