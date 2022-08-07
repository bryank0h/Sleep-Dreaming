if (instance_exists(oPlayer) && !global.gamePaused && room != AfterLevel3)
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
	
	//if (instance_exists(oWeapon) && !heartAttack)
	//{
		//oWeapon.visible = false;
	//}
	
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
					speed = 3;
					direction = point_direction(other.x, other.y, oPlayer.x, oPlayer.y);
					image_angle = direction;
				}
				fireBlastCountdown = 100;
			}
			if (heartAttackDelay <= 0)
			{
				//visible = false;
				//oWeapon.visible = false;
				heartAttack = false;
				heartAttackDelay = 0;
				heartAttackDelaySet = false;
				visibleCondition = false;
				if (room == Level1 || room == Level2 || room == Level3) speedWalk = 0.5;
				instance_destroy(oHeartParticle);
			}
		}
	}
}







