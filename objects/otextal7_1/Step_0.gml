if (TextCreated == false)
{
	if (place_meeting(x,y,oPlayer))
	{
		NewTextBox("I don't wanna be here anymore.");
		NewTextBox("I just want to end it all.");
		TextCreated = true;
	}
}

