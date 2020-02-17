/// @description


if(place_meeting(x, y, oPlayer) && canBePickedUp){
	//canBePickedUp = false;
	oPlayer.currentCostume = currentCostume;
	instance_create_depth(x,y,1,lastCostume);
	instance_destroy(myID);
};
else if(!place_meeting(x, y, oPlayer) && !canBePickedUp){
	canBePickedUp = true;
};