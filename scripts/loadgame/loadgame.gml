function LoadGame(_slot){
	audio_stop_all();
	global.gameSaveSlot = _slot;
	var _file = "save" + string(global.gameSaveSlot) + ".sav";
	if (file_exists(_file))
	{
		var _json = LoadJSONFromFile(_file);
		global.playerHP = _json[? "playerHealth"];
		if (!instance_exists(oSound1)) instance_create_layer(7, -17, "Audio", oSound1);
		global.sound = _json[? "audio"];
		global.soundPlayed = _json[? "audioPlayed"];
		
		//RoomTransition(TRANS_TYPE.SLIDE);
		if (room_get_name(_json[? "room"]) == "AfterLevel3") global.room = LoadAtAfterLevel3;
		else if (room_get_name(_json[? "room"]) == "HouseSleeping") global.room = Cheating;
		else if (!room_exists(_json[? "room"])) global.room = Cheating;
		else global.room = _json[? "room"];
		ds_map_destroy(_json);
		
		return true;
	}
	else
	{
		show_debug_message("No save in this slot");
		return false;
	}
}

function LoadJSONFromFile(_filename)
{
	var _buffer = buffer_load(_filename);
	var _string = buffer_read(_buffer, buffer_string);
	buffer_delete(_buffer);
	var _json = json_decode(_string);
	return _json;
}