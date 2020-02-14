/// @description Insert description here
// You can write your code in this editor

draw_self();
if(rightLeftMove == 0 && upDownMove == 0){
	image_index = currentSprite;
};

switch (currentCostume){
	case "playerCurrentCostume":{
		sprite_index = sPlayer;
		break;
	}
	case "yellow":{
		sprite_index = sCostumeYellow;
		oCostumeParent.oCreate = oCostumeYellow;
		break;
	}
	case "red":{
		sprite_index = sCostumeRed;
		break;
	}
};

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