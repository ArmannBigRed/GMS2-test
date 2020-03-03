/// @description Insert description here
// You can write your code in this editor

blink();

image_index = isBlinking();

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

draw_self();

/*
switch (rightLeftMove){
	case 1:{
		image_index = 0;
		currentSprite = image_index;
		break;
	}
	case -1:{
		image_index = 1;
		currentSprite = image_index;
		break;
	}
};

switch (upDownMove){
	case 1:{
		image_index = 2;
		currentSprite = image_index;
		break;
	}
	case -1:{
		image_index = 3;
		currentSprite = image_index;
		break;
	}
};
*/
