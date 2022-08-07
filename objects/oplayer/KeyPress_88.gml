if (LoadGame(global.gameSaveSlot))
{
	oSound1.sound = audio_play_sound(asset_get_index(global.sound), 1000, true);
	oSound1.soundPlayed = global.soundPlayed;
	room_goto(global.room);
	global.gamePaused = false;
}


