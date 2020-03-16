event_inherited();
moveSpeed = 3;

//first costume of the level
initialCostume = "blue";
currentCostume = initialCostume;

//movement on the grid
rightLeftMove = 0;
rightLeftMove = 0;



//time to slide alter second number for faster or slower movement
slide = SLOMO_SECONDS * moveSpeed;

gridX = convXYToGrid(x);
gridY = convXYToGrid(y);
//moveTo
toX = gridX;
toY = gridY;
//where you are on the grid
x = convGridToXY(gridX);
y = convGridToXY(gridY);

flipFlop = 1;