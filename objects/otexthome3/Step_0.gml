if (TextCreated == false)
{
	if (place_meeting(x,y,oPlayer))
	{
		NewTextBox("I've studied so hard. Yet...");
		NewTextBox("I still can't even top my class.");
		NewTextBox("\"There's always next time, Justin!\"\nTch.");
		NewTextBox("Nobody even understands me.");
		NewTextBox("...");
		NewTextBox("Ridiculous.");
		TextCreated = true;
	}
}

