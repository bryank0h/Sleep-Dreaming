if (!doorOpen && doorOpenCondition)
{
	doorOpen = true;
	image_speed = 1;
	if (instance_exists(oNextLevel))
		oNextLevel.playerCanEnter = 1;
}