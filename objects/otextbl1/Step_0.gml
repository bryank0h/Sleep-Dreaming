if (TextCreated == false  && !global.readBoss)
{
	if (place_meeting(x,y,oPlayer))
	{
		NewTextBox("The Other Justin:\n...");
		NewTextBox("The Other Justin:\nYou came.");
		NewTextBox("The Other Justin:\nThe world stands against you despite your efforts.");
		NewTextBox("The Other Justin:\n...");
		NewTextBox("The Other Justin:\nWhat will you do?");
		NewTextBox("Justin:\n...");
		NewTextBox("Justin:\nI have to stand back up.");
		NewTextBox("Justin:\nI know this world isn't just about me.");
		NewTextBox("Justin:\nI have pushed people away because I was angry.");
		NewTextBox("Justin:\nBut really, all I am angry at is...");
		NewTextBox("Justin:\nMyself.");
		NewTextBox("The Other Justin:\nGood... good.");
		NewTextBox("The Other Justin:\nIf that's the case, come at me with everything you have.");
		NewTextBox("The Other Justin:\nVent your frustrations away.");
		NewTextBox("The Other Justin:\nBecause at the end of the day, all we have is...");
		NewTextBox("The Other Justin:\n\"Me\".");
		NewTextBox("(Justin's Heart steels itself with resolve!)");
		TextCreated = true;
		global.readBoss = true;
	}
}

