if (instance_exists(oPlayer) && !global.gamePaused && room != StartofDream && room != AfterLevel3 && room != LoadAtAfterLevel3 && room != AfterLevel7 && room != GoingToBoss)
{
	if (instance_exists(oPlayer) && (place_meeting(x,y,oPlayer) || touched == 1) && leavingTime <= 0)
	{
		touched = 1;
		oPlayer.heartWithMe = true;
		if (instance_exists(oEnemy)) oEnemy.heartAttackChecked = false;
	}
}

if (room == LevelBoss && instance_exists(oEnemy) && instance_exists(oHeartPack))
{
	if (oEnemy.bossHP <= 0)
	{
		audio_sound_gain(oSound1.sound, 0, 6000);
		instance_create_layer(oEnemy.x, oEnemy.y, oDead);
		instance_destroy(oEnemy);
		if (instance_exists(oHeartParticle)) instance_destroy(oHeartParticle);
		instance_destroy();
	}
}
