timeAlive = 300;
gotReflected = false;
if (instance_exists(oPlayer) && !global.gamePaused)
{
	image_angle = point_direction(x, y, oPlayer.x, oPlayer.y-3);
	speed = 3;
	if (room == Level4 || room == Level5 || room == Level6 || room == Level7 || room == LevelBoss) speed = 3.5;
}
