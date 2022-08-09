if (instance_exists(oPlayer) && !global.gamePaused)
{
	oPlayer.HP -= 0.002;
	x = oPlayer.x;
	y = oPlayer.y - 10;
}

