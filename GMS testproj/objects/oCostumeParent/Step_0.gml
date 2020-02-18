/// @description


if(place_meeting(x, y, oPlayer) && canBePickedUp){
	oPlayer.currentCostume = currentCostume;
	//layer 100 to hide behind background find a better way, maybe hide object
	instance_create_depth(x,y,100,lastCostume);
	instance_destroy(myID);
};
else if(!place_meeting(x, y, oPlayer) && !canBePickedUp){
	canBePickedUp = true;
	//depth set 1 to make it visible over the background
	depth = 1;
};

