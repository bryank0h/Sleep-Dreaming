if (instance_exists(oPlayer))
{
	if (place_meeting(x,y,oPlayer))
	{
		if (keyboard_check_pressed(ord("E")))
		{
			image_speed = 1;
			oPlayer.darken = 5;
			if (room == Level5 && oPlayer.warped == 0)
			{
				if (oPlayer.x > 25 && oPlayer.x < 60 && oPlayer.y < 45 && oPlayer.warped == 0)
				{
					oPlayer.warped = 10;
					oPlayer.x = 236;
					oPlayer.y = 24;
				}
				else if (oPlayer.x > 220 && oPlayer.x < 250 && oPlayer.y < 45 && oPlayer.warped == 0)
				{
					oPlayer.warped = 10;
					oPlayer.x = 42;
					oPlayer.y = 24;
				}
			}
			else if (room == Level6 && oPlayer.warped == 0)
			{
				if (oPlayer.x < 28 && oPlayer.y > 128 && oPlayer.warped == 0)
				{
					oPlayer.warped = 10;
					oPlayer.x = 295;
					oPlayer.y = 27;
				}
				else if (oPlayer.x > 290 && oPlayer.y < 33 && oPlayer.warped == 0)
				{
					oPlayer.warped = 10;
					oPlayer.x = 22;
					oPlayer.y = 152;
				}
			}
		
		}
	}
}


if (image_index = sprite_get_number(sDoor) - 1)
{
	image_speed = 0;
	image_index = 0;
}