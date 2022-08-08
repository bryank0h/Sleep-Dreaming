if (!global.gamePaused)
{
	if (!instance_exists(oHeartPack) && heartWithMe = true)
	{
		if (room == Level1 || room == Level2 || room == Level3 || room == AfterLevel3 || room == Level4 || room == Level5 || room == Level6 || room == Level7 || room == AfterLevel7 || room == GoingToBoss)
			instance_create_layer(x-7, y-16, "Player", oHeartPack)
	}
	if (room == AfterLevel3 || room == AfterLevel7 || room == GoingToBoss)
	{
		var vw = camera_get_view_width(view_camera[0]) / 2;
		var vh = camera_get_view_height(view_camera[0]) / 2;
		camera_set_view_pos(view_camera[0], x - vw, y - vh);
	}
	if (room == GoingToBoss && global.playerHP < oPlayer.HP_max)
	{
		global.playerHP += 0.01;
		oPlayer.HP += 0.01;
		if (global.playerHP >= oPlayer.HP_max)
		{
			global.playerHP = oPlayer.HP_max;
			oPlayer.HP = oPlayer.HP_max;
		}
	}
}

