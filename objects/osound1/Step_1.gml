if (soundPlayed == false)
{
	if (room == Home)
	{
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
		sound = audio_play_sound(Infiltration,1000,true);
		soundPlayed = true;
	}
	
}
