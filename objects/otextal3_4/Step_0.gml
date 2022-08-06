if (TextCreated == false)
{
	if (place_meeting(x,y,oPlayer))
	{
		global.textSpeed = .04;
		audio_play_sound(whisper,900,false);
		NewTextBox("Are you enjoying yourself?");
		TextCreated = true;
	}
}

