if(instance_exists(oPlayer)) 
{
	if (timeAlive > 250) direction = point_direction(x,y, oPlayer.x, oPlayer.y);
}

if (timeAlive > 0) timeAlive -=2;
else
{
	if (image_index > 5) instance_destroy();
}

