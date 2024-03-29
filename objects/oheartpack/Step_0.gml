if (room == LevelBoss && instance_exists(oEnemy) && instance_exists(oHeartPack))
{
	if (oEnemy.bossHP <= 0)
	{
		instance_create_layer(oEnemy.x, oEnemy.y, oDead);
		instance_destroy(oEnemy);
		instance_destroy();
	}
}

if (instance_exists(oPlayer) && !global.gamePaused && room != StartofDream && room != AfterLevel3 && room != LoadAtAfterLevel3 && room != AfterLevel7 && room != GoingToBoss)
{
	if (instance_exists(oPlayer) && (place_meeting(x,y,oPlayer) || touched == 1) && leavingTime <= 0)
	{
		touched = 1;
		oPlayer.heartWithMe = true;
		if (instance_exists(oEnemy)) oEnemy.heartAttackChecked = false;
	}

	if (touched == 1 && keyboard_check_pressed(ord("P")))
	{
		if (instance_exists(oPlayer))
		{
			touched = 0;
			oPlayer.heartWithMe = false;
			leavingTime = 60;
			oHeartPack.speed = 5;
			with (instance_nearest(oPlayer.x, oPlayer.y, oEnemy))
			{
				oHeartPack.direction = point_direction(oPlayer.x, oPlayer.y, x, y) + random_range(-2,2);
			}
		}
	}
	
	if (oPlayer.heartWithMe && keyboard_check(ord("O")))
	{
		if (!instance_exists(oSoulReflector))
		{
			instance_create_layer(oPlayer.x, oPlayer.y-10, "Player", oSoulReflector);
		}
	}
	else
	{
		if (instance_exists(oSoulReflector))
		{
			instance_destroy(oSoulReflector)
			oPlayer.canMove = true;
		}
	}

	if (place_meeting(x, y, oEnemy) && !oPlayer.heartWithMe && touched == 0)
	{
		with(instance_place(x, y, oEnemy))
		{
			heartAttack = true;
		}
		direction = point_direction(x, y, oPlayer.x, oPlayer.y-3);
		speed = 5;
	}
}

if (room == StartofDream)
{
	if (touched = 0)
	{
		direction = point_direction(x, y, oPlayer.x, oPlayer.y-3);
		speed = 1;
	}
}
