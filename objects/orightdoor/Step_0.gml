if (!countExecuted)
{
	numberOfBoxes = 0;
	if (instance_exists(oBox1)) 
	{
		numberOfBoxes += instance_number(oBox1);
	}
	if (instance_exists(oBox2))
	{
		numberOfBoxes += instance_number(oBox2);
	}
	if (instance_exists(oBox3)) 
	{
		numberOfBoxes += instance_number(oBox3);
	}
	if (instance_exists(oBox4))
	{
		numberOfBoxes += instance_number(oBox4);
	}
	countExecuted = true;
}

if (numberOfBoxes == 0)
{
	doorOpenCondition = true;
}

if (image_index > 3)
{
	image_speed = 0;
}


