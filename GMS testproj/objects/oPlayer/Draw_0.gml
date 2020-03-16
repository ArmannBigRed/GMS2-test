event_inherited();
blink();
squishUpdate();

switch (currentCostume){
	case "blue":{
		sprite_index = sCostumeBlue;
		oCostumeParent.lastCostume = oCostumeBlue;
		break;
	}
	case "yellow":{
		sprite_index = sCostumeYellow;
		oCostumeParent.lastCostume = oCostumeYellow;
		break;
	}
	case "red":{
		sprite_index = sCostumeRed;
		oCostumeParent.lastCostume = oCostumeRed;
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
};SS