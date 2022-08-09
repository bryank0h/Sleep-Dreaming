if (TextCreated == false)
{
	if (place_meeting(x,y,oPlayer))
	{
		SaveGame();
		NewTextBox("I think...");
		NewTextBox("I was wrong...");
		NewTextBox("For being such a jerk...");
		NewTextBox("Even to the one who needs me the most.");
		NewTextBox("Myself.");
		NewTextBox("...");
		NewTextBox("...")
		NewTextBox("I'm ready.")
		TextCreated = true;
	}
}

