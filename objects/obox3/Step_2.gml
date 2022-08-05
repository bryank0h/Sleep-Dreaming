if (boxActivated == false)
{
	if (place_meeting(x,y,oFire))
	{
		boxActivated = true;
		if (instance_exists(oDoorNextRoom)) oDoorNextRoom.numberOfBoxes--;
		if (instance_exists(oRightDoor)) oRightDoor.numberOfBoxes--;
		image_index = 1;
	}
}