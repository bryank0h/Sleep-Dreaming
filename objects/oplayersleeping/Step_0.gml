if (room == HouseSleeping)
{
	if (keyboard_check_pressed(vk_space))
	{
		if (!key1) key1 = true;
		else if (!key2) key2 = true;
		else if (!key3) key3 = true;
		else if (!key4) key4 = true;
		else if (!key5) key5 = true;
		else if (!key6) key6 = true;
		else if (!key7) key7 = true;
		else if (!key8) key8 = true;
		else if (!key9) key9 = true;
		else if (!key10) key10 = true;
	}

	if (key1 && key2 && key3 && key4 && key5 && key6 && key7 && key8 && key9 && key10) 
	{
		audio_stop_all();
		window_set_fullscreen(true);
		audio_play_sound(Lol, 1100, true);
		room_goto(Cheating);
	}
}

if (room == Cheating)
{
	if (left && delay <= 0)
	{
		image_xscale = 20;
		left = false;
		right = true;
		delay = 50;
	}
	else if (right && delay <= 0)
	{
		image_xscale = -20;
		left = true;
		right = false;
		delay = 50;
	}
}


