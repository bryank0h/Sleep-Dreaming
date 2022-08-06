if (TextCreated == false)
{
	if (place_meeting(x,y,oPlayer))
	{
		global.textSpeed = .06
		instance_create_layer(315, 22, "Player", oHeartPack)
		NewTextBox("...?");
		NewTextBox("It feels...");
		NewTextBox("Warm.");
		TextCreated = true;
	}
}

