event_inherited()

#region Movement
//Slide to the next point if we're not already at it
if(gridX != toX || gridY != toY){
	gridX += clamp(toX - gridX, -slide, slide);
	gridY += clamp(toY - gridY, -slide, slide);

	x = gridX * cGRIDSCALE;
	y = gridY * cGRIDSCALE;
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
};
else{
	//check for inputs / if movement is possibles
	
	rightLeftMove = (keyboard_check(ord("D"))) + (-keyboard_check(ord("A")));
	upDownMove = (keyboard_check(ord("S"))) + (-keyboard_check(ord("W")));
	
	if(abs(rightLeftMove + upDownMove) == 1){
		if(place_free((toX+rightLeftMove) * cGRIDSCALE, (toY+upDownMove) * cGRIDSCALE) || place_meeting((toX+rightLeftMove) * cGRIDSCALE, (toY+upDownMove) * cGRIDSCALE, oCostumeParent)){
			toX += rightLeftMove;
			toY += upDownMove;
		};
	};
};
#endregion

#region Open doors with spacebar
//check for doors and get the instance ID from the 4 grid spaces around the player
if(rightGridID(gridX, gridY, cGRIDSCALE, oDoorParent) != noone){
	if(rightGridID(gridX, gridY, cGRIDSCALE, oDoorParent).doorColor == currentCostume && keyboard_check_pressed(vk_space)){
		instance_destroy(rightGridID(gridX, gridY, cGRIDSCALE, oDoorParent));
	}
};

if(leftGridID(gridX, gridY, cGRIDSCALE, oDoorParent) != noone){
	if(leftGridID(gridX, gridY, cGRIDSCALE, oDoorParent).doorColor == currentCostume && keyboard_check_pressed(vk_space)){
		instance_destroy(leftGridID(gridX, gridY, cGRIDSCALE, oDoorParent));
	}
};

if(downGridID(gridX, gridY, cGRIDSCALE, oDoorParent) != noone){
	if(downGridID(gridX, gridY, cGRIDSCALE, oDoorParent).doorColor == currentCostume && keyboard_check_pressed(vk_space)){
		instance_destroy(downGridID(gridX, gridY, cGRIDSCALE, oDoorParent));
	}
};

if(upGridID(gridX, gridY, cGRIDSCALE, oDoorParent) != noone){
	if(upGridID(gridX, gridY, cGRIDSCALE, oDoorParent).doorColor == currentCostume && keyboard_check_pressed(vk_space)){
		instance_destroy(upGridID(gridX, gridY, cGRIDSCALE, oDoorParent));
	}
};
#endregion

//flip the player sprite right or left depending on the movement
if(rightLeftMove != 0){
	xScale = sign(rightLeftMove);	
};

updateZ();
updateWorldDepth();





