if (keyboard_check_pressed(vk_escape) && global.gamePausedforText = false && !global.gamePaused && room != rTitle && instance_exists(oPlayer))
{
	show_debug_message("PAUSED");
	if (global.gamePaused)
	{
		global.gamePaused = false;
	}
	else
	{
		global.gamePaused = true;
	}
	
	if (global.gamePaused == true)
	{
		with(all)
		{
			gamePausedImageSpeed = image_speed;
			gamePausedSpeed = speed;
			image_speed = 0;
			speed = 0;
		}
		if (!instance_exists(oUI))
		{
			instance_create_layer(0,0,"Player",oUI);
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

