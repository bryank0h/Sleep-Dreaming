if (instance_exists(oPlayer))
{
	// Movement Calculate
	inputDirection = point_direction(x, y, oPlayer.x, oPlayer.y);
	hSpeed = lengthdir_x(speedWalk, inputDirection);
	vSpeed = lengthdir_y(speedWalk, inputDirection);

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
	else
	{
		image_xscale = 1;	
	}	
}







