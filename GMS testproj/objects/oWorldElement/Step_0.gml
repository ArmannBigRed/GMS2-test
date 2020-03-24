//time to slide alter second number for faster or slower movement
slide = SLOMO_SECONDS * moveSpeed;

#region Movement
//Slide to the next point if we're not already at it
if(gridX != toX || gridY != toY){
	gridX += clamp(toX - gridX, -slide, slide);
	gridY += clamp(toY - gridY, -slide, slide);
	
	x = convGridToXY(gridX);
	y = convGridToXY(gridY);
	//bounce, change zSpeed value for height, squishSet for squishamount
	//Can also adjust GRAVITY in oInit that affects the fallspeed for z
	if (z >= 0) {
		zSpeed = -200;
		flipFlop *= -1;
		rotation = 3*flipFlop;
		squishSet(percent(10) * percent(50));
	};
	//make the movement smooth if key is held down
	if(gridX == toX && gridY == toY){
		event_perform(ev_step, 0);
	};
}
else{
	//manipulate rightLeftMove and upDownMove variables to make npcs move to parody the player move code **readability**
	if(abs(rightLeftMove + upDownMove) == 1){
		if(place_free((toX+rightLeftMove) * cGRIDSCALE, (toY+upDownMove) * cGRIDSCALE)){
			toX += rightLeftMove;
			toY += upDownMove;
		};
	};
};
#endregion