function LoadGame(_slot){
	global.gameSaveSlot = _slot;
	var _file = "save" + string(global.gameSaveSlot) + ".sav";
	if (file_exists(_file))
	{
		var _json = LoadJSONFromFile(_file);
		room = _json[? "room"];
		global.playerHP = _json[? "playerHealth"];
		oPlayer.x = _json[? "playerX"];
		oPlayer.y = _json[? "playerY"]
		if (room != Home)
		{
			if (!instance_exists(oSound1)) instance_create_layer(7, -17, "Audio", oSound1);
			oSound1.sound = _json[? "audio"];
			oSound1.soundPlayed = _json[? "audioPlayed"];
		}
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
	var _json = josn_decode(_string);
	return _json;
}