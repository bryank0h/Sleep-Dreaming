if (keyboard_check_pressed(vk_escape) && global.gamePausedforText = false)
{
	global.gamePaused = !global.gamePaused;
	
	if (global.gamePaused)
	{
		with(all)
		{
			gamePausedImageSpeed = image_speed;
			gamePausedSpeed = speed;
			image_speed = 0;
			speed = 0;
		}
	}
	else
	{
		with (all)
		{
			image_speed = gamePausedImageSpeed;
			speed = gamePausedSpeed;
		}
	}
}

