timeAlive = 300;
gotReflected = false;
if (instance_exists(oPlayer) && !global.gamePaused)
{
	image_angle = point_direction(x, y, oPlayer.x, oPlayer.y-3);
	if (room == Level4 || room == Level5 || room == Level6) speed = 3.5;
	speed = 3;
}
