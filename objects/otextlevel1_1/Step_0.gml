if (TextCreated == false && !global.readLevel1)
{
	if (place_meeting(x,y,oPlayer))
	{
		NewTextBox("???");
		NewTextBox("This guy looks just like me.");
		NewTextBox("...");
		NewTextBox("(Justin's Heart wavers)")
		TextCreated = true;
		global.readLevel1 = true;
	}
}

