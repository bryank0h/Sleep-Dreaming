if (instance_exists(oPlayer))
{
	if (place_meeting(x,y,oPlayer))
	{
		if (playerCanEnter == 1)
		{
			if (keyboard_check_pressed(ord("E")))
			{	
				RoomTransition(TRANS_TYPE.SLIDE);		
			}
		}
		if (instance_exists(oTransition) && playerCanEnter == 0)
		{
			if (oTransition.percent >= 1) RoomTransition(TRANS_TYPE.SLIDE);
		}
	}
}

if (instance_exists(oPlayerSleeping))
{
	if (playerCanEnter == 1)
	{
		RoomTransition(TRANS_TYPE.SLIDE);
	}
}
