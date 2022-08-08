collisionMap = layer_tilemap_get_id(layer_get_id("Col"));

image_speed = 0;
hSpeed = 1;
vSpeed = 1;
speedWalk = 0.7;
if (room == Level1)
{
	speedWalk = 0.5;
}
if (room == AfterLevel3 || room == LoadAtAfterLevel3)
{
	speedWalk = 0;
}
if (room == Level4)
{
	speedWalk = 0.6;
}

playerDead = false;
visibleCondition = false;
heartAttack = false;
heartAttackDelay = 0;
heartAttackChecked = false;
heartAttackDelaySet = false;

fireBlastCountdown = 0;




