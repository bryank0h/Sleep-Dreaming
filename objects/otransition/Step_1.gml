if (leading == OUT)
{
	if (room != Home || room != House) percent = min(1, percent + TRANSITION_SPEED);
	else if (room == Home) percent = min(1, percent + 0.03);
	else if (room == House) percent = min(1, percent + 0.001);
	if (percent >= 1)
	{
		leading = IN;
		if (room == Home) 
		{
			room_goto(House);
		}
		else if (room == House)
		{
			room_goto(HouseSleeping);
		}
		else if (room == HouseSleeping)
		{
			room_goto(StartofDream);
		}
		else if (room == StartofDream)
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
		else if (room == Level3)
		{
			room_goto(AfterLevel3);
		}
		else if (room == LoadAtAfterLevel3)
		{
			room_goto(AfterLevel3);
		}
		else if (room == AfterLevel3)
		{
			room_goto(Level4);
		}
		else if (room == Level4)
		{
			room_goto(Level5);
		}
		else if (room == Level5)
		{
			room_goto(Level6);
		}
		else if (room == Level6)
		{
			room_goto(Level7);
		}
		else if (room == Level7)
		{
			room_goto(AfterLevel7);
		}
		else if (room == AfterLevel7)
		{
			room_goto(GoingToBoss);
		}
		else if (room == GoingToBoss)
		{
			room_goto(LevelBoss);
		}
		else if (is_numeric(roomToGoTo)) room_goto(roomToGoTo);
		else
		{
			audio_stop_all();
			window_set_fullscreen(true);
			audio_play_sound(Lol, 1100, true);
			room_goto(Cheating);
		}
	}
}
else
{
	if (room != House && room != HouseSleeping && room != AfterLevel3 && room != AfterLevel7) percent = max(0, percent - TRANSITION_SPEED);
	else if (room == House) percent = max(0, percent - 0.03);
	else if (room == HouseSleeping || room == AfterLevel3 || room == AfterLevel7)  percent = max(0, percent - 0.01);
	if (percent <= 0)
	{
		instance_destroy();
	}
}