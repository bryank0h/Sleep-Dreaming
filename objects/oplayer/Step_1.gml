if (!global.gamePaused)
{
	if (!instance_exists(oHeartPack) && heartWithMe = true)
	{
		if (room == Room1 || room == Level1 || room == Level2 || room == Level3 || room == AfterLevel3 || room == Level4)
			instance_create_layer(x-7, y-16, "Player", oHeartPack)
	}
	if (room == AfterLevel3)
	{
		var vw = camera_get_view_width(view_camera[0]) / 2;
		var vh = camera_get_view_height(view_camera[0]) / 2;
		camera_set_view_pos(view_camera[0], x - vw, y - vh);
	}
}

