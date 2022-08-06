if (instance_exists(oPlayer) && !global.gamePaused)
{
	if (instance_exists(oPlayer) && (place_meeting(x,y,oPlayer) || touched == 1) && leavingTime <= 0)
	{
		touched = 1;
		oPlayer.heartWithMe = true;
		oEnemy.heartAttackChecked = false;
	}
}

