collisionMap = layer_tilemap_get_id(layer_get_id("Col"));

if (room == Home)
{
	speedWalk = 1;
}
else
{
	speedWalk = 1.4;
}
image_speed = 0;
hSpeed = 0;
vSpeed = 0;
HP = 5;

currentX = 0;
currentY = 0;
warped = 0;

flash = 0;
darken = 0;
vulnerable = 0;
dead = 0;
heartWithMe = true;