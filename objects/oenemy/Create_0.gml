collisionMap = layer_tilemap_get_id(layer_get_id("Col"));

image_speed = 0;
hSpeed = 1;
vSpeed = 1;
speedWalk = 0.7;
if (room == Level1)
{
	speedWalk = 0.4;
}
if (room == AfterLevel3 || room == LoadAtAfterLevel3)
{
	speedWalk = 0;
}
if (room == Level4 || room == Level5)
{
	speedWalk = 0.6;
}
if (room == Level6)
{
	speedWalk = 0.65;
}

playerDead = false;
visibleCondition = false;
heartAttack = false;
heartAttackDelay = 0;
heartAttackChecked = false;
heartAttackDelaySet = false;

fireBlastCountdown = 0;




