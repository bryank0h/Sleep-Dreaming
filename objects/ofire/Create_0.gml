timeAlive = 300;
if (instance_exists(oPlayer) && !global.gamePaused)
{
	image_angle = point_direction(x, y, oPlayer.x, oPlayer.y);
	if (room == Level4) speed = 3.5;
	speed = 3;
}
