if (TextCreated == false)
{
	if (place_meeting(x,y,oPlayer))
	{
		layer_set_visible("Floor", false);
		oEnemy.image_xscale = -1;
		NewTextBox("The Other Justin:\n...");
		NewTextBox("The Other Justin:\nHi.");
		NewTextBox("Justin:\nWho are you exactly...?");
		NewTextBox("The Other Justin:\nSomeone you already know.");
		NewTextBox("The Other Justin:\nYou.");
		NewTextBox("Justin:\n...")
		NewTextBox("Justin:\nAnd?");
		NewTextBox("The Other Justin:\nWhy would you want to end it all?");
		NewTextBox("Justin:\nYou're just here to hurt me.");
		NewTextBox("Justin:\nGet Lost!");
		NewTextBox("The Other Justin:\n...");
		NewTextBox("The Other Justin:\nDo you not care about those around you?");
		NewTextBox("The Other Justin:\nIs life really all about your exam scores and grades?");
		NewTextBox("Justin:\n...");
		NewTextBox("Justin:\n...");
		NewTextBox("Justin:\n...Why do you care?");
		NewTextBox("The Other Justin:\nBecause.")
		NewTextBox("The Other Justin:\nWe both know we are better than that.");
		NewTextBox("Justin:\n...");
		NewTextBox("Justin:\nI SAID GO AWAY!");
		NewTextBox("The Other Justin:\n...")
		NewTextBox("The Other Justin:\nYou shall give me your final answer in the next room.")
		TextCreated = true;
	}
}

