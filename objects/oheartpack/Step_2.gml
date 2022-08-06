if (instance_exists(oPlayer) && !global.gamePaused && room != StartofDream && room != AfterLevel3)
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
		direction = point_direction(x, y, oPlayer.x, oPlayer.y);
		speed = 5;	
	}
	
	leavingTime--;
}

if (room == StartofDream || room == AfterLevel3)
{
	if (place_meeting(x,y,oPlayer))
	{
		x = oPlayer.x - 7;
		y = oPlayer.y - 16;
		touched = 1;
	}
}
