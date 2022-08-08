if (!global.gamePaused)
{
	if(instance_exists(oPlayer)) 
	{
		if (timeAlive > 285) direction = point_direction(x,y, oPlayer.x, oPlayer.y);
	}
	
	if (place_meeting(x,y,oSoulReflector) && !gotReflected)
	{
		direction += random_range(-1,1) * 70;
		gotReflected = true;
	}

	if (instance_exists(oBox1))
	{
		if (place_meeting(x, y, oBox1)) instance_destroy();
	}

	if (instance_exists(oBox2))
	{
		if (place_meeting(x, y, oBox2)) instance_destroy();
	}


	if (instance_exists(oBox3))
	{
		if (place_meeting(x, y, oBox3)) instance_destroy();
	}


	if (instance_exists(oBox4))
	{
		if (place_meeting(x, y, oBox4)) instance_destroy();
	}

	if (timeAlive > 0) timeAlive -=2;
	else
	{
		if (image_index > 5) instance_destroy();
	}
}


