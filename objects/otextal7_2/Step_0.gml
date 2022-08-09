if (TextCreated == false)
{
	if (place_meeting(x,y,oPlayer))
	{
		audio_stop_all();
		NewTextBox("...");
		NewTextBox("...");
		NewTextBox("?");
		TextCreated = true;
	}
}

