if (!instance_exists(oPlayer) && playerDead == false && room != AfterLevel3)
{
	instance_create_layer(oHeartPack.x, oHeartPack.y, oDead);
	playerDead = true;
}