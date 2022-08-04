if (instance_exists(oPlayer))
{
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
