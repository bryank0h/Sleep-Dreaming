if (!keyPressed)
{
	titleVisible = min(1, titleVisible + 0.007);
	if (slotsVisible <= 1)
	{
		slotsVisible = max(0, slotsVisible - 0.03);
	}
}
else
{
	titleVisible = max(0, titleVisible - 0.02);
	slotsVisible = min(1, slotsVisible + 0.01);
}

if (keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W")))
{
	slotSelected -= 1;
	if (slotSelected < 0) slotSelected = 2;
}
if (keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S")))
{
	slotSelected += 1;
	if (slotSelected > 2) slotSelected = 0;
}

if (keyboard_check_pressed(ord("E")) && (keyPressed) && (!keyPressed2) && (!loadingStarted))
{
	loadingStarted = true;
	keyPressed2 = true;
	global.gameSaveSlot = slotSelected;
	if (!LoadGame(global.gameSaveSlot))
	{
		RoomTransition(TRANS_TYPE.SLIDE, Home);
	}
	else
	{
		audio_stop_all();
		global.gameLoaded = true;
		RoomTransition(TRANS_TYPE.SLIDE, global.room);
	}
}

if (keyboard_check_pressed(vk_delete) && (keyPressed) && (!keyPressed2) && (!loadingStarted))
{
	if (file_exists("save" + string(slotSelected) + ".sav"))
	{
		file_delete("save" + string(slotSelected) + ".sav");
		room_restart();
	}
}

if (keyboard_check_pressed(vk_escape) && (keyPressed) && (!keyPressed2) && (!loadingStarted))
{
	room_restart();
}

if (keyboard_check_pressed(ord("E"))) keyPressed = true;
