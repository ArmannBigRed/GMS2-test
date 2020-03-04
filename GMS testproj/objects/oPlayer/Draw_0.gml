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

//change right / left facing depending on input
if (rightLeftMove != 0) {
	image_xscale = sign(rightLeftMove);
};


draw_sprite_ext(sShadow, 0, x, y+height*0.5, 1, 1, 0, c_white, 0.25)
draw_self();

