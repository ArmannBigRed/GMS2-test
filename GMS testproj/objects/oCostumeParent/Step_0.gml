if(place_meeting(x, y, oPlayer) && canBePickedUp){
	oPlayer.currentCostume = currentCostume;
	instance_destroy(myID);
	instanceCreate(lastCostume, x, y);
};
else if(!place_meeting(x, y, oPlayer) && !canBePickedUp){
	canBePickedUp = true;
	//updating depth to 1 to show pickup after the player has left the tile
	depth = 1;
};

