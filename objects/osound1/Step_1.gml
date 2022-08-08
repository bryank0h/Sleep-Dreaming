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
	else if (room == AfterLevel3)
	{
		if (!audio_is_playing(Sting))
		{
			window_set_fullscreen(false);
			sound = audio_play_sound(DarkAlley, 1000, true);
			soundPlayed = true;
			global.gameLoaded = false;
		}
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
}
