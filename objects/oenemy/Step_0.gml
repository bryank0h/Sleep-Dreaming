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
	
	if (heartAttack)
	{
		if (heartAttackDelaySet == false)
		{
			heartAttackDelaySet = true;
			visible = true;
			oWeapon.visible = true;
			heartAttackDelay = 200;
		}
		else
		{
			heartAttackDelay -= 1;
			if (heartAttackDelay <= 0)
			{
				visible = false;
				oWeapon.visible = false;
				heartAttack = false;
				heartAttackDelay = 0;
				heartAttackDelaySet = false;
			}
		}
	}
	else
	{
		if (appear > 0)
		{
			visible = false;
			oWeapon.visible = false;
			appear--
		}
		else
		{
			visible = true;
			oWeapon.visible = true;
			appear = 200;
			with (instance_create_layer(x, y, "Fire", oFire))
			{
				image_speed = 2;
			}
		}
	}
	
}







