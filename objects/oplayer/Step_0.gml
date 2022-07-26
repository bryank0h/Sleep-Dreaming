// Keyboard input
keyLeft = keyboard_check(ord("A")) || keyboard_check(vk_left);
keyRight = keyboard_check(ord("D")) || keyboard_check(vk_right);
keyUp = keyboard_check(ord("W")) || keyboard_check(vk_up);
keyDown = keyboard_check(ord("S")) || keyboard_check(vk_down);
keyAttack  = keyboard_check_pressed(vk_space);
keyItem = keyboard_check_pressed(ord("E"));

// Movement Calculate
inputDirection = point_direction(0, 0, keyRight - keyLeft, keyDown - keyUp);
inputMagnitude = (keyRight - keyLeft != 0) || (keyDown - keyUp != 0);

hSpeed = lengthdir_x(inputMagnitude * speedWalk, inputDirection);
vSpeed = lengthdir_y(inputMagnitude * speedWalk, inputDirection);

PlayerCollision();

// Image Manipulate
if (hSpeed != 0 || vSpeed != 0) 
{
	image_speed = 1;
}
else
{
	image_speed = 0;
	image_index = 0;
}

if (inputDirection > 90 && inputDirection < 270)
{
	image_xscale = -1;
}
else if (inputMagnitude != 0 && keyRight != 0)
{
	image_xscale = 1;	
}


