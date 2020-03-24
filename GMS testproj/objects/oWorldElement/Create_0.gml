width		= 64;
height		= 64;
shadowDraw	= true;
shadowScale = 1;

z			= 0;
zSpeed		= 0;
moveSpeed	= 0;
rotation	= 0;


xScale = 1;
yScale = 1;
flipFlop = 1;
//movement on the grid, for the player get these as keyboard inputs, for npc add them manually
rightLeftMove = 0;
upDownMove = 0;


gridX = convXYToGrid(x);
gridY = convXYToGrid(y);
//moveTo
toX = gridX;
toY = gridY;
//where you are on the grid
x = convGridToXY(gridX);
y = convGridToXY(gridY);


blinkInit();
squishInit();
updateWorldDepth();