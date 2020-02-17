/// @description 



//Movement
rightLeftMove = (keyboard_check(ord("D")) || keyboard_check(vk_right)) - (keyboard_check(ord("A")) || keyboard_check(vk_left));
upDownMove = (keyboard_check(ord("S")) || keyboard_check(vk_down)) - (keyboard_check(ord("W")) || keyboard_check(vk_up));


if(canMove && (rightLeftMove != 0 || upDownMove != 0)){
	//TODO:
	//need to move canOpenDoor variable somewhere else, doesnt make sense with 0 speed,
	// or maybe it does since alarm sets a movedelay so the speed is always 0 between loops
	canOpenDoor = false;
	rightLeftMove *= moveTile;
	if(!place_meeting(x + rightLeftMove, y, oDoorParent) && !place_meeting(x + rightLeftMove, y, oSolidParent)){
		x += rightLeftMove;
	};
	else if (!place_meeting(x + rightLeftMove, y, oSolidParent)){
		if(instance_place(x + rightLeftMove, y, oDoorParent).doorColor == currentCostume){
			canOpenDoor = true;
		}
	};
	
	upDownMove *= moveTile;
	if(!place_meeting(x , y + upDownMove, oDoorParent) && !place_meeting(x , y + upDownMove, oSolidParent)){
		y += upDownMove;
	};
	else if (!place_meeting(x , y + upDownMove, oSolidParent)){
		if(instance_place(x , y + upDownMove, oDoorParent).doorColor == currentCostume){
			canOpenDoor = true;
		}
	};
	
	canMove = false;
	alarm[0] = (room_speed * moveDelay); 
};