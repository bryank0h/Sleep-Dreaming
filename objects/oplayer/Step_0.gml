if (dead == 0)
{
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


	// Collide into enemy
	if (place_meeting(x+0.6, y+0.6, oEnemy))
	{
		directionOfHit = point_direction(oEnemy.x, oEnemy.y, x, y)
		if (directionOfHit > 90 && directionOfHit < 270) hitMagnitude = 50 else hitMagnitude = 50;
	
		magnitudeCount = 0;
		while (magnitudeCount != hitMagnitude)
		{
			tilemapExist = tilemap_get_at_pixel(collisionMap, x + magnitudeCount, y + magnitudeCount);
			if (tilemapExist)
			{		
				break;
			}
			else 
			{
				magnitudeCount++;
			}
		}	

		hSpeed = lengthdir_x(magnitudeCount, directionOfHit);
		vSpeed = lengthdir_y(magnitudeCount, directionOfHit);
	
		currentX = x;
		currentY = y;
	
		PlayerCollision()
	
		if (x < 17 || y < 17 || x > 300 || y > 158)
		{
			x = currentX;
			y = currentY;		
		}

		HP -= 2;
	}
	
	if (HP < 0)
	{
		instance_deactivate_object(oPlayer);
		instance_create_layer(x,y,"Player", oDead);
		instance_destroy(oPlayer);
		dead = 1;
	}

}
