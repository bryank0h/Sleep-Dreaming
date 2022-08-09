if (instance_exists(oPlayer) && !global.gamePaused && room != StartofDream && room != AfterLevel3 && room != LoadAtAfterLevel3 && room != AfterLevel7 && room != GoingToBoss)
{
	if (instance_exists(oPlayer) && (place_meeting(x,y,oPlayer) || touched == 1) && leavingTime <= 0)
	{
		touched = 1;
		oPlayer.heartWithMe = true;
		if (instance_exists(oEnemy)) oEnemy.heartAttackChecked = false;
	}
	
	if (oPlayer.heartWithMe == true)
	{
		x = oPlayer.x - 7;
		y = oPlayer.y - 16;
	}
	else if (leavingTime <= 0)
	{
		if (room == LevelBoss)
		{
			direction = point_direction(x, y, oPlayer.x, oPlayer.y-3);
			speed = 7.5;	
		}
		else
		{
			direction = point_direction(x, y, oPlayer.x, oPlayer.y-3);
			speed = 5;	
		}
	}
	
	leavingTime--;
}

if (room == StartofDream || room == AfterLevel3 || room == AfterLevel7 || room == GoingToBoss)
{
	if (place_meeting(x,y,oPlayer))
	{
		x = oPlayer.x - 7;
		y = oPlayer.y - 16;
		touched = 1;
	}
}

if (instance_exists(oPlayer))
{
	if (room == AfterLevel7)
	{
		if (oPlayer.x > 282 && !global.gamePaused)
		{
			global.playerHP += 0.01;
			oPlayer.HP += 0.01;
			if (global.playerHP >= oPlayer.HP_max)
			{
				global.playerHP = oPlayer.HP_max;
				oPlayer.HP = oPlayer.HP_max;
			}
			direction = point_direction(x, y, oPlayer.x, oPlayer.y-3);
			speed = 5;
		}
	}
	
	if (room == LevelBoss && oPlayer.heartWithMe && !instance_exists(oSoulReflector) && !keyboard_check(ord("O")) && !global.gamePaused)
	{
		if (global.playerHP >= oPlayer.HP_max)
		{
			global.playerHP = oPlayer.HP_max;
			oPlayer.HP = oPlayer.HP_max;
		}
		else
		{
			global.playerHP += 0.005;
			oPlayer.HP += 0.005;
		}
	}
}

if (room == LevelBoss && instance_exists(oEnemy) && instance_exists(oHeartPack))
{
	if (oEnemy.bossHP <= 0)
	{
		instance_create_layer(oEnemy.x, oEnemy.y, oDead);
		instance_destroy(oEnemy);
		instance_destroy();
	}
}

