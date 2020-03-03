/// @description Init

currentSprite = 2;

//first costume of the level
initialCostume = "blue";
currentCostume = initialCostume;
nextFrame = true;

//movement on the grid
rightLeftMove = 0;
rightLeftMove = 0;

//time to slide
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
