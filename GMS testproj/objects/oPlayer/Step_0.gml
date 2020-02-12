/// @description 



//Movement
rightLeftMove = (keyboard_check(ord("D")) || keyboard_check(vk_right)) - (keyboard_check(ord("A")) || keyboard_check(vk_left));
upDownMove = (keyboard_check(ord("S")) || keyboard_check(vk_down)) - (keyboard_check(ord("W")) || keyboard_check(vk_up));


if(canMove && (rightLeftMove != 0 || upDownMove != 0)){
	canOpenDoor = false;
	
	rightLeftMove *= moveTile;
	if(!place_meeting(x + rightLeftMove, y, oDoorParent)){
		x += rightLeftMove;
	};
	else{
		if(instance_place(x + rightLeftMove, y, oDoorParent).doorColor == keyColor){
			canOpenDoor = true;
		}
	};
	
	upDownMove *= moveTile;
	if(!place_meeting(x , y + upDownMove, oDoorParent)){
		y += upDownMove;
	};
	else{
		if(instance_place(x , y + upDownMove, oDoorParent).doorColor == keyColor){
			canOpenDoor = true;
		}
	};
	
	canMove = false;
	alarm[0] = (room_speed * moveDelay); 
};