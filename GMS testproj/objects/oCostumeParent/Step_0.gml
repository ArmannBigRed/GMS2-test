/// @description


if(place_meeting(x, y, oPlayer)&& !beenPickedUp){
	oPlayer.currentCostume = currentCostume;
	beenPickedUp = true;
	instance_destroy();
};

if(beenPickedUp){
	instance_create_depth(oPlayer.x, oPlayer.y, 1, oCreate)
}
else{
	beenPickedUp = false;
}