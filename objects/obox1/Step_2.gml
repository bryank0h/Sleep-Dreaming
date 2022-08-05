if (boxActivated == false)
{
	if (place_meeting(x,y,oFire))
	{
		boxActivated = true;
		oDoorNextRoom.numberOfBoxes--;
		image_index = 1;
	}
}