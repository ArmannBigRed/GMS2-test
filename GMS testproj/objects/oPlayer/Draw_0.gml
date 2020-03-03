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
