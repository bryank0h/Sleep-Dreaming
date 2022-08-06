if (TextCreated == false)
{
	if (place_meeting(x,y,oPlayer))
	{
		NewTextBox("...\n(Press E to continue)");
		TextCreated = true;
	}
}

