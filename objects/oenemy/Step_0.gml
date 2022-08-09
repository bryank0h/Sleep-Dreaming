if (instance_exists(oPlayer) && !global.gamePaused && room != AfterLevel3 && room != LoadAtAfterLevel3 && room != AfterLevel7)
{
	// Movement Calculate
	inputDirection = point_direction(x, y, oPlayer.x, oPlayer.y);
	hSpeed = lengthdir_x(speedWalk, inputDirection);
	vSpeed = lengthdir_y(speedWalk, inputDirection);

	if (room != LevelBoss) PlayerCollision();
	else
	{
		x += hSpeed;
		y += vSpeed;
	}

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
	
	if (room == LevelBoss && instance_exists(oPlayer))
	{
		vulnerable--;
		if (place_meeting(x,y,oHeartPack))
		{
			if (vulnerable <= 0) 
			{
				audio_play_sound(Bump,900,false);
				bossHP -= 3;
				flash = 20;
				show_debug_message("Enemy Hit");
			}		
			vulnerable = 15;
		}
		if (place_meeting(x,y,oFire))
		{
			with(instance_place(x, y, oFire))
			{
				if (timeAlive < 200)
				{
					if (oEnemy.vulnerable <= 0) 
					{
						audio_play_sound(Bump,900,false);
						oEnemy.bossHP--;
						oEnemy.flash = 20;
						show_debug_message("Enemy Hit");
					}		
					oEnemy.vulnerable = 15;
					instance_destroy();
				}
			}
		}
	}
	
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
				with (instance_create_layer(x, y-8, "Fire", oFire))
				{
					direction = point_direction(other.x, other.y, oPlayer.x, oPlayer.y-5);
					image_angle = direction;
				}
				if (room == Level4 || room == Level5 || room == Level6 || room == Level7) fireBlastCountdown = 75;
				else if (room == LevelBoss) 
				{
					if (bossHP > bossMaxHP/2) fireBlastCountdown = 25;
					else fireBlastCountdown = 15;
				}
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
				if (room == Level1) speedWalk = 0.4;
				else if (room == Level2 || room == Level3 ) speedWalk = 0.5;
				else if (room == Level4 || room == Level5) speedWalk = 0.6;
				else if (room == Level6 || room == Level7) speedWalk = 0.65;
				else if (room == LevelBoss) 
				{
					if (bossHP > bossMaxHP/2) speedWalk = 1.6;
					else speedWalk = 3;
				}
				instance_destroy(oHeartParticle);
			}
		}
	}
}







