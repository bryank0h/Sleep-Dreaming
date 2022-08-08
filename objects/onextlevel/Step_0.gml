if (instance_exists(oPlayer))
{
	if (place_meeting(x,y,oPlayer))
	{
		if (playerCanEnter == 1)
		{
			if (keyboard_check_pressed(ord("E")) && !global.gamePaused)
			{	
				RoomTransition(TRANS_TYPE.SLIDE);
			}
		}
		if (instance_exists(oTransition) && playerCanEnter == 0)
		{
			if (oTransition.percent >= 1) RoomTransition(TRANS_TYPE.SLIDE);
		}
	}
}

if (instance_exists(oPlayerSleeping))
{
	if (playerCanEnter == 1)
	{
		RoomTransition(TRANS_TYPE.SLIDE);
	}
}


if (room == LoadAtAfterLevel3)
{
	window_set_fullscreen(true);
	layer_set_visible("BigEnemy", false);
	if (playerCanEnter == 1)
	{
		layer_set_visible("BigEnemy", true);
		if (!audio_is_playing(Sting) && !sting) 
		{
			sound = audio_play_sound(Sting, 1000, false);
			sting = true;
		}
	}
}
