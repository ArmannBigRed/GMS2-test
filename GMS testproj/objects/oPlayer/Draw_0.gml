event_inherited();
blink();
squishUpdate();

switch (currentCostume){
	case "blue":{
		sprite_index = sCostumeBlue;
		oCostumeParent.lastCostume = oCostumeBlue;
		animatedSprite = sSkeletonKey
		break;
	}
	case "yellow":{
		sprite_index = sCostumeYellow;
		oCostumeParent.lastCostume = oCostumeYellow;
		animatedSprite = noone
		break;
	}
	case "red":{
		sprite_index = sCostumeRed;
		oCostumeParent.lastCostume = oCostumeRed;
		animatedSprite = noone
		break;
	}
};


drawSprite(sprite_index, isBlinking(), x, y+z, xScale*squishXScale, squishYScale, rotation);

if(z >= 0){
	rotation = lerp(rotation, 0, percent(35));	
}
else{
	rotation = lerp(rotation, 0, percent(5));
};

//flip the player sprite right or left depending on the movement
if(rightLeftMove != 0){
	xScale = sign(rightLeftMove);	
};

//TODO
//move this whole block into scripts and oWorldElement, and make it more generalized for all animations, create scripts for different effects.
//maybe make an animation controller object ? or make an object for each animation created by the player and destroyed at the end of the animation
if(c_spacebarpressed && animatedSprite != noone){
	drawAnim = true;
};

if(drawAnim){
	scalePopIn = lerp(scalePopIn, 1, percent(25));
	moveUpAnim = lerp(moveUpAnim, height*percent(75), percent(15));
	
	drawSprite(animatedSprite, 0, x, (y+z)-(moveUpAnim), scalePopIn, scalePopIn);
	
	if(scalePopIn >= 1){
		scalePopIn = 0;
		moveUpAnim = 0;
		drawAnim = false;
	}
}



