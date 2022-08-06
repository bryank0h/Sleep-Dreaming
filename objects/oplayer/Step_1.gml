if (!global.gamePaused)
{
	if (!instance_exists(oHeartPack) && heartWithMe = true)
	{
		if (room == Room1 || room == Level1 || room == Level2 || room == Level3)
		instance_create_layer(x-7, y-16, "Player", oHeartPack)
	}
}

