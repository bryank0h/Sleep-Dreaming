if (TextCreated == false)
{
	if (place_meeting(x,y,oPlayer))
	{
		NewTextBox("...");
		NewTextBox("...");
		NewTextBox("?");
		TextCreated = true;
	}
}

