if (instance_exists(oPlayer) && !global.gamePaused && room != StartofDream && room != AfterLevel3 && room != LoadAtAfterLevel3 && room != AfterLevel7 && room != GoingToBoss)
{
	if (instance_exists(oPlayer) && (place_meeting(x,y,oPlayer) || touched == 1) && leavingTime <= 0)
	{
		touched = 1;
		oPlayer.heartWithMe = true;
		oEnemy.heartAttackChecked = false;
	}
	
	if (oPlayer.heartWithMe == true)
	{
		x = oPlayer.x - 7;
		y = oPlayer.y - 16;
	}
	else if (leavingTime <= 0)
	{
		direction = point_direction(x, y, oPlayer.x, oPlayer.y-3);
		speed = 5;	
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

if (room == AfterLevel7)
{
	if (oPlayer.x > 282)
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
