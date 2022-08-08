if (TextCreated == false)
{
	if (place_meeting(x,y,oPlayer))
	{
		NewTextBox("I think...");
		NewTextBox("I was wrong...");
		NewTextBox("...");
		NewTextBox("I'm ready.")
		TextCreated = true;
	}
}

