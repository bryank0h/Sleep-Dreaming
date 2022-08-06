if (TextCreated == false)
{
	if (place_meeting(x,y,oPlayer))
	{
		NewTextBox("I want to get out of here.");
		TextCreated = true;
	}
}

