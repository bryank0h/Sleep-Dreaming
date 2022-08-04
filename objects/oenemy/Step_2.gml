if (!instance_exists(oPlayer) && playerDead == false)
{
	instance_create_layer(oHeartPack.x, oHeartPack.y, oDead);
	playerDead = true;
}