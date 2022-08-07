if (TextCreated == false)
{
	if (place_meeting(x,y,oPlayer))
	{
		layer_set_visible("Floor", false);
		oEnemy.visible = true;
		audio_stop_all();
		global.textSpeed = .02;
		audio_play_sound(whisper,900,true);
		NewTextBox("Are you done......?");
		TextCreated = true;
	}
}

