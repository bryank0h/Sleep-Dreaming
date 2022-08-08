if (dead == 0 && !global.gamePaused && canMove)
{
	speedWalk = SetPlayerSpeed();
	if (vulnerable > 0) vulnerable--;
	// Keyboard input
	keyLeft = keyboard_check(ord("A")) || keyboard_check(vk_left);
	keyRight = keyboard_check(ord("D")) || keyboard_check(vk_right);
	keyUp = keyboard_check(ord("W")) || keyboard_check(vk_up);
	keyDown = keyboard_check(ord("S")) || keyboard_check(vk_down);

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
		if (room == Home || room == House || room == StartofDream || room == AfterLevel3 || room == AfterLevel7 || room == GoingToBoss) image_speed = 0.3;
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


	if (room != AfterLevel3 && room != AfterLevel7)
	{
		// Collide into enemy
		if ((place_meeting(x+0.5, y+0.5, oEnemy) || place_meeting(x, y, oEnemy) ||(place_meeting(x, y, oFire))) && !instance_exists(oSoulReflector))
		{
			if(place_meeting(x, y, oFire))
			{
				instance_destroy(oFire);
			}
			directionOfHit = point_direction(oEnemy.x, oEnemy.y, x, y)
			if (directionOfHit > 90 && directionOfHit < 270) hitMagnitude = 70 else hitMagnitude = 70;
	
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

			if (vulnerable == 0) 
			{
				audio_play_sound(Bump,900,false);
				HP--;
				global.playerHP = HP;
				flash = 15;
				HPDeducted = true;
			}
			
			vulnerable = 5;
		}
	}
	
	if (place_meeting(x,y,oSpikeUp) || place_meeting(x,y,oSpikeDown) || place_meeting(x,y,oSpikeLeft) || place_meeting(x,y,oSpikeRight))
	{
		if (vulnerable == 0) 
		{
			audio_play_sound(Bump,900,false);
			HP--;
			global.playerHP = HP;
			flash = 15;
			HPDeducted = true;
		}
			
		vulnerable = 5;
	}
	
	if (HP <= 0)
	{
		instance_deactivate_object(oPlayer);
		instance_create_layer(x,y,"Player", oDead);
		global.playerHP = 5;
		instance_destroy(oPlayer);
		screenshake(30, 5, 0.2);
		dead = 1;
	}
}
