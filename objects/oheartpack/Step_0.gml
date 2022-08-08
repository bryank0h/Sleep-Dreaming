if (instance_exists(oPlayer) && !global.gamePaused && room != StartofDream && room != AfterLevel3 && room != LoadAtAfterLevel3)
{
	if (instance_exists(oPlayer) && (place_meeting(x,y,oPlayer) || touched == 1) && leavingTime <= 0)
	{
		touched = 1;
		oPlayer.heartWithMe = true;
		oEnemy.heartAttackChecked = false;
	}

	if (touched == 1 && keyboard_check_pressed(ord("P")))
	{
		if (instance_exists(oPlayer))
		{
			touched = 0;
			oPlayer.heartWithMe = false;
			leavingTime = 60;
			oHeartPack.speed = 5;
			oHeartPack.direction = point_direction(oPlayer.x, oPlayer.y, oEnemy.x, oEnemy.y) + random_range(-2,2);
		}
	}

	if (place_meeting(x, y, oEnemy) && oPlayer.heartWithMe == false && touched == 0)
	{
		with(instance_place(x, y, oEnemy))
		{
			heartAttack = true
		}
		direction = point_direction(x, y, oPlayer.x, oPlayer.y);
		speed = 5;
	}
}

if (room == StartofDream)
{
	if (touched = 0)
	{
		direction = point_direction(x, y, oPlayer.x, oPlayer.y);
		speed = 1;
	}
}
