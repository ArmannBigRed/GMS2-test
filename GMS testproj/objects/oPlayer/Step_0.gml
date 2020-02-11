/// @description Insert description here
// You can write your code in this editor


//Movement
rightLeftMove = (keyboard_check(ord("D")) || keyboard_check(vk_right)) - (keyboard_check(ord("A")) || keyboard_check(vk_left));
upDownMove = (keyboard_check(ord("S")) || keyboard_check(vk_down)) - (keyboard_check(ord("W")) || keyboard_check(vk_up));


if(canMove && (rightLeftMove != 0 || upDownMove != 0))
{
	rightLeftMove *= moveTile;
	if(!place_meeting(x + rightLeftMove, y, oParentSolid))
	{
		x += rightLeftMove;
	};
	
	upDownMove *= moveTile;
	if(!place_meeting(x , y + upDownMove, oParentSolid))
	{
		y += upDownMove;
	};
	
	canMove = false;
	alarm[0] = (room_speed * moveDelay); 
};

<<<<<<< HEAD

=======
>>>>>>> parent of 74e3317... v0.02

