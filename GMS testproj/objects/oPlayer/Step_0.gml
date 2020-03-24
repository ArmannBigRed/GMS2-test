event_inherited()

#region Movement

rightLeftMove = (keyboard_check(ord("D"))) + (-keyboard_check(ord("A")));
upDownMove = (keyboard_check(ord("S"))) + (-keyboard_check(ord("W")));

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

#region Update scripts
updateZ();
updateWorldDepth();
#endregion

