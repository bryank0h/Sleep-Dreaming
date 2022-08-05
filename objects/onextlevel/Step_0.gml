if (instance_exists(oPlayer))
{
	if (playerCanEnter == 1)
	{
		if (keyboard_check_pressed(ord("E")))
		{	
			if (room == Home)
				room_goto(Level1);
			else if (room == Level1)
				room_goto(Level2);
			else if (room == Level2)
				room_goto(Level3);
		}
	}
}
