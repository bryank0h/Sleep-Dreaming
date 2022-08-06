if (soundPlayed == false)
{
	if (room == Home)
	{
		audio_play_sound(Beginning,1000,true);
		soundPlayed = true;
	}
	else if (room == Level1) 
	{
		audio_stop_all();
		audio_play_sound(Infiltration,1000,true);
		soundPlayed = true;
	}
}
