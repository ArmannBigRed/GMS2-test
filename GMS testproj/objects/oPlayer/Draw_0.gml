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

draw_sprite_ext(sShadow, 0, x, y+height*0.5, 1, 1, 0, c_white, 0.25)


draw_sprite_ext(sprite_index, isBlinking(),x, y+z, xScale*squishXScale, squishYScale, rotation, c_white, 1)

if(z >= 0){
	rotation = lerp(rotation, 0, 0.35);	
}
else{
	rotation = lerp(rotation, 0, 0.05);
};