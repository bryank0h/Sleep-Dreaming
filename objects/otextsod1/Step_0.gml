if (TextCreated == false)
{
	if (place_meeting(x,y,oPlayer))
	{
		global.textSpeed = .06
		NewTextBox("Where am I?\n(Press E to continue)");
		NewTextBox("I'm scared.");
		NewTextBox("...");
		TextCreated = true;
	}
}

