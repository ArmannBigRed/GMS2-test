event_inherited()

//Slide to the next point if we're not already at it
if(gridX != toX || gridY != toY){
	gridX += clamp(toX - gridX, -slide*SLOMO_SECONDS, slide*SLOMO_SECONDS);
	gridY += clamp(toY - gridY, -slide*SLOMO_SECONDS, slide*SLOMO_SECONDS);
	
	x = gridX * gridScale;
	y = gridY * gridScale;
	//make the movement smooth if key is held down
	if(gridX == toX && gridY == toY){
		event_perform(ev_step, 0);
	};
};
else{
	//check for inputs / if movement is possible (add collision here)
	
	rightLeftMove = (keyboard_check(ord("D"))) + (-keyboard_check(ord("A")));
	upDownMove = (keyboard_check(ord("S"))) + (-keyboard_check(ord("W")));
	
	if(abs(rightLeftMove + upDownMove) == 1){
		if(place_free((toX+rightLeftMove) * gridScale, (toY+upDownMove) * gridScale) || place_meeting((toX+rightLeftMove) * gridScale, (toY+upDownMove) * gridScale, oCostumeParent)){
			toX += rightLeftMove;
			toY += upDownMove;
		};
		else if(!place_meeting((toX+rightLeftMove) * gridScale, (toY+upDownMove) * gridScale, oSolidParent)){
			if(instance_place((toX+rightLeftMove) * gridScale, (toY+upDownMove) * gridScale, oDoorParent).doorColor == currentCostume){
				instance_destroy(instance_place((toX+rightLeftMove) * gridScale, (toY+upDownMove) * gridScale, oDoorParent))
			};
		};
	};
};

updateWorldDepth();