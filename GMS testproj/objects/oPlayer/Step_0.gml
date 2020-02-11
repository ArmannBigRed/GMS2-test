/// @description Insert description here
// You can write your code in this editor


//Movement
rightLeftMove = (keyboard_check(ord("D")) || keyboard_check(vk_right)) - (keyboard_check(ord("A")) || keyboard_check(vk_left));
upDownMove = (keyboard_check(ord("S")) || keyboard_check(vk_down)) - (keyboard_check(ord("W")) || keyboard_check(vk_up));


if(canMove && (rightLeftMove != 0 || upDownMove != 0))
{
	nextToDoor = false;
	rightLeftMove *= moveTile;
	if(!place_meeting(x + rightLeftMove, y, oParentDoor))
	{
		x += rightLeftMove;
	};
	else
	{
		nextToDoor = true;
	}
	
	upDownMove *= moveTile;
	if(!place_meeting(x , y + upDownMove, oParentDoor))
	{
		y += upDownMove;
	};
	else
	{
		nextToDoor = true;
	}
	
	canMove = false;
	alarm[0] = (room_speed * moveDelay); 
};

show_debug_message(nextToDoor)

