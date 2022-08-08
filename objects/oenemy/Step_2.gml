if (!instance_exists(oPlayer) && playerDead == false && room != AfterLevel3 && room != LoadAtAfterLevel3)
{
	instance_create_layer(oHeartPack.x, oHeartPack.y, oDead);
	playerDead = true;
}