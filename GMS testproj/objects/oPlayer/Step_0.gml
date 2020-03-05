event_inherited()

//TODO make some scripts for this block and move it into oWorldElement since other stuff is gonna need to move later
#region Movement and Collision 
//Slide to the next point if we're not already at it
if(gridX != toX || gridY != toY){
	gridX += clamp(toX - gridX, -slide, slide);
	gridY += clamp(toY - gridY, -slide, slide);

	x = gridX * gridScale;
	y = gridY * gridScale;
	//bounce, change zSpeed value for height, squishSet for squishamount
	//TODO adjust these values to make it feel better, maybe how many times we want to bounce for each tile move
	if (z >= 0) {
		zSpeed = -400;
		squishSet(0.2);
	};
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
#endregion

if(rightLeftMove != 0){
	xScale = sign(rightLeftMove);	
};

updateZ();
updateWorldDepth();

