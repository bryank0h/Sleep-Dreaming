if (leading == OUT)
{
	if (room != Home || room != House) percent = min(1, percent + TRANSITION_SPEED);
	else if (room == Home) percent = min(1, percent + 0.03);
	else if (room == House) percent = min(1, percent + 0.01);
	if (percent >= 1)
	{
		leading = IN;
		if (room == Home) 
		{
			room_goto(House);
		}
		else if (room == House)
		{
			room_goto(Level1);
		}
		else if (room == Level1)
		{
			room_goto(Level2);
		}				
		else if (room == Level2)
		{
			room_goto(Level3);
		}
	}
}
else
{
	if (room != House || room != Level1) percent = max(0, percent - TRANSITION_SPEED);
	else if (room == House) percent = max(0, percent - 0.03);
	else if (room == Level1)  percent = max(0, percent - 0.01);
	if (percent <= 0)
	{
		instance_destroy();
	}
}