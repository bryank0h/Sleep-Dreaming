collisionMap = layer_tilemap_get_id(layer_get_id("Col"));
bossHP = 100;
bossMaxHP = 100;
vulnerable = 0;
flash = 0;

healthbar_x = room_width - 110;
healthbar_y = room_height - 178;
healthbar_width = 100;
healthbar_height = 12;


image_speed = 0;
hSpeed = 1;
vSpeed = 1;
speedWalk = 0.7;
if (room == Level1)
{
	speedWalk = 0.4;
}
if (room == Level2 || room == Level3)
{
	speedWalk = 0.5
}
if (room == AfterLevel3 || room == LoadAtAfterLevel3 || room == AfterLevel7)
{
	speedWalk = 0;
}
if (room == Level4 || room == Level5)
{
	speedWalk = 0.6;
}
if (room == Level6 || room == Level7)
{
	speedWalk = 0.65;
}
if (room == LevelBoss)
{
	speedWalk = 1.6;
}

playerDead = false;
visibleCondition = false;
heartAttack = false;
heartAttackDelay = 0;
heartAttackChecked = false;
heartAttackDelaySet = false;

fireBlastCountdown = 0;




