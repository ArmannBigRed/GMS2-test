event_inherited();
switch (round(rockRotation)){
	case 0:{
		image_angle = 90;
		break;
	}
	case 1:{
		image_angle = 180;
		break;
	}
	case 2:{
		image_angle = 270;
		break;
	}
	case 3:{
		image_angle = 0;
		break;
	}
}
	
draw_self();