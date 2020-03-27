event_inherited()

#region Movement
//this gets translated into grid movement in oWorldElement
leftMove		= c_KeyA || c_KeyLeft
rightMove		= c_KeyD || c_KeyRight
upMove			= c_KeyW || c_KeyUp
downMove		= c_KeyS || c_KeyDown

rightLeftMove	= rightMove + (-leftMove);
upDownMove		= downMove + (-upMove);
#endregion

#region Open doors with spacebar
//check for doors and get the instance ID from the 4 grid spaces around the player
if(rightGridID(gridX, gridY, cGRIDSCALE, oDoorParent) != noone){
	if(rightGridID(gridX, gridY, cGRIDSCALE, oDoorParent).doorColor == currentCostume && c_spacebarpressed){
		instance_destroy(rightGridID(gridX, gridY, cGRIDSCALE, oDoorParent));
	}
};

if(leftGridID(gridX, gridY, cGRIDSCALE, oDoorParent) != noone){
	if(leftGridID(gridX, gridY, cGRIDSCALE, oDoorParent).doorColor == currentCostume && c_spacebarpressed){
		instance_destroy(leftGridID(gridX, gridY, cGRIDSCALE, oDoorParent));
	}
};

if(downGridID(gridX, gridY, cGRIDSCALE, oDoorParent) != noone){
	if(downGridID(gridX, gridY, cGRIDSCALE, oDoorParent).doorColor == currentCostume && c_spacebarpressed){
		instance_destroy(downGridID(gridX, gridY, cGRIDSCALE, oDoorParent));
	}
};

if(upGridID(gridX, gridY, cGRIDSCALE, oDoorParent) != noone){
	if(upGridID(gridX, gridY, cGRIDSCALE, oDoorParent).doorColor == currentCostume && c_spacebarpressed){
		instance_destroy(upGridID(gridX, gridY, cGRIDSCALE, oDoorParent));
	}
};
#endregion

