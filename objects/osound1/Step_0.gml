if (room == AfterLevel3)
{
	if (soundPlayed == false)
	{
		audio_sound_gain(sound, 0, 10000);
		if (audio_sound_get_gain(sound) == 0)
		{
			audio_stop_all();
			sound = audio_play_sound(DarkAlley,1000,true);
			soundPlayed = true;
		}
	}
}


