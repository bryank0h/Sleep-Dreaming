if(LoadGame(global.gameSaveSlot))
{
	var sound = asset_get_index(global.sound);
	oSound1.sound = audio_play_sound(sound, 1000, true);
	oSound1.soundPlayed = global.soundPlayed;
	room_goto(global.room);
}



