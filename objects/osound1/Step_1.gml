if (global.gameLoaded && room != LoadAtAfterLevel3 && room != rTitle)
{
	if (room == Level1)
	{
		global.readLevel1 = true;
		sound = audio_play_sound(Infiltration, 1000, true);
		soundPlayed = true;
		global.gameLoaded = false;
	}
	else if (room == Level2)
	{
		sound = audio_play_sound(Infiltration, 1000, true);
		soundPlayed = true;
		global.gameLoaded = false;
	}
	else if (room == Level3)
	{
		sound = audio_play_sound(Infiltration, 1000, true);
		soundPlayed = true;
		global.gameLoaded = false;
	}
	else if (room == AfterLevel3)
	{
		if (!audio_is_playing(Sting))
		{
			window_set_fullscreen(false);
			oSign.signText = "Why did\nyou save\nyour game?"
			sound = audio_play_sound(DarkAlley, 1000, true);
			soundPlayed = true;
			global.gameLoaded = false;
		}
	}
	else if (room == Level4)
	{
		sound = audio_play_sound(Phase2, 1000, true);
		soundPlayed = true;
		global.gameLoaded = false;
	}
	else if (room == Level5)
	{
		sound = audio_play_sound(Phase2, 1000, true);
		soundPlayed = true;
		global.gameLoaded = false;
	}
	else if (room == Level6)
	{
		sound = audio_play_sound(Phase2, 1000, true);
		soundPlayed = true;
		global.gameLoaded = false;
	}
	else if (room == Level7)
	{
		sound = audio_play_sound(Phase2, 1000, true);
		soundPlayed = true;
		global.gameLoaded = false;
	}
	else if (room == AfterLevel7)
	{
		sound = audio_play_sound(DarkAlley, 1000, true);
		soundPlayed = true;
		global.gameLoaded = false;
	}
	else if (room == GoingToBoss)
	{
		sound = audio_play_sound(DarkAlley, 1000, true);
		soundPlayed = true;
		global.gameLoaded = false;
	}
	else if (room == Cheating)
	{
		window_set_fullscreen(true);
		sound = audio_play_sound(Lol, 1000, true);
		soundPlayed = true;
		global.gameLoaded = false;
	}
	else 
	{
		var playsound = asset_get_index(global.sound);
		sound = audio_play_sound(playsound, 1000, true);
		soundPlayed = global.soundPlayed;
		global.gameLoaded = false;
	}	
}


if (soundPlayed == false)
{
	if (room == rTitle)
	{
		audio_stop_all();
		sound = audio_play_sound(Beginning,1000,true);
		soundPlayed = true;
	}
	else if (room == Home)
	{
		audio_stop_all();
		sound = audio_play_sound(Beginning,1000,true);
		soundPlayed = true;
	}
	else if (room == HouseSleeping)
	{
		audio_stop_all();
		sound = audio_play_sound(DarkAlley,1000,true);
		soundPlayed = true;
	}
	else if (room == Level1) 
	{
		audio_stop_all();
		soundPlayed = true;
	}
	else if (room == Level4)
	{
		audio_stop_all();
		sound = audio_play_sound(Phase2,1000,true);
		soundPlayed = true;
	}	
	else if (room == AfterLevel7)
	{
		audio_stop_all();
		sound = audio_play_sound(DarkAlley,1000,true);
		soundPlayed = true;
	}
	else if (room == GoingToBoss)
	{
		audio_stop_all();
		sound = audio_play_sound(DarkAlley,1000,true);
		soundPlayed = true;
	}
}
