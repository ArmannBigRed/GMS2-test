event_inherited();
//first costume of the level
initialCostume = "blue";
currentCostume = initialCostume;

//movement on the grid
rightLeftMove = 0;
rightLeftMove = 0;



//time to slide alter second number for faster or slower movement
slide = SLOMO_SECONDS * 3;

cGRIDSCALE = 64;

//Where oPlayer is on the grid
gridX = round(x/cGRIDSCALE);
gridY = round(y/cGRIDSCALE);
//moveTo
toX = gridX;
toY = gridY;
//where you are on the grid
x = gridX * cGRIDSCALE;
y = gridY * cGRIDSCALE;

flipFlop = 1;