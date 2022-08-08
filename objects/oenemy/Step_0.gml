if (instance_exists(oPlayer) && !global.gamePaused && room != AfterLevel3 && room != LoadAtAfterLevel3)
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

	if (inputDirection > 90 && inputDirection < 270) image_xscale = -1;
	else image_xscale = 1;
	
	if (heartAttack)
	{
		if (heartAttackDelaySet == false)
		{
			heartAttackDelaySet = true;
			//visible = true;
			//oWeapon.visible = true;
			heartAttackDelay = 400;
			fireBlastCountdown = 100;
			speedWalk = 0;
			instance_create_layer(other.x, other.y, "HeartPackAttack", oHeartParticle);
		}
		else
		{
			fireBlastCountdown--;
			heartAttackDelay--;
			if (fireBlastCountdown <= 0)
			{
				with (instance_create_layer(x, y, "Fire", oFire))
				{
					direction = point_direction(other.x, other.y, oPlayer.x, oPlayer.y);
					image_angle = direction;
				}
				if (room == Level4) fireBlastCountdown = 75;
				else fireBlastCountdown = 100;
			}
			if (heartAttackDelay <= 0)
			{
				//visible = false;
				//oWeapon.visible = false;
				heartAttack = false;
				heartAttackDelay = 0;
				heartAttackDelaySet = false;
				visibleCondition = false;
				if (room == Level1 || room == Level2 || room == Level3 ) speedWalk = 0.5;
				else if (room == Level4 || room == Level5) speedWalk = 0.6;
				instance_destroy(oHeartParticle);
			}
		}
	}
}







