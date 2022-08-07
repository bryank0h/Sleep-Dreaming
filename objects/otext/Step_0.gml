lerpProgress += (1 - lerpProgress) / 50;
textProgress += global.textSpeed;

x1 = lerp(x1, x1Target, lerpProgress);
x2 = lerp(x2, x2Target, lerpProgress);

if (keyboard_check_pressed(ord("E")) || room == HouseSleeping)
{
	continueCondition = true;
	if (room == StartofDream)
	{
		if (place_meeting(oTextSOD2.x, oTextSOD2.y, oPlayer))
		{
			if (!place_meeting(oHeartPack.x, oHeartPack.y, oPlayer)) continueCondition = false;
		}
	}
	if (continueCondition)
	{
		var _messageLength = string_length(message);
		if (textProgress >= _messageLength)
		{
			instance_destroy();
			if (instance_exists(oTextQueued))
			{
				with (oTextQueued) ticket--;
			}
			else
			{
				global.gamePaused = false;
				global.gamePausedforText = false;
				global.textSpeed = .3;
				if (room == HouseSleeping)
				{
					oNextLevel.playerCanEnter = 1;
				}
				else if (room == Level1)
				{
					sound = audio_play_sound(Infiltration,1000,true);
					soundPlayed = true;
				}
				else if (room == AfterLevel3)
				{
					if (oPlayer.x > 260)
					{
						audio_stop_all();
						oEnemy.visible = false;
						layer_set_visible("Floor", true);
						oRightDoor.visible = true;
						oSound1.soundPlayed = false;
					}
				}
			}
		}
		else
		{
			if (textProgress > 2 && room != HouseSleeping && room != AfterLevel3)
			{
				textProgress = _messageLength;
			}
		}
	}
}