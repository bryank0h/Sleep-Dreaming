if (room != Home && room != House && room != HouseSleeping && room != StartofDream && room != AfterLevel3 && !global.gamePaused)
{
	var drawCondition = true;
	if (room == LevelBoss && !instance_exists(oEnemy))
	{
		drawCondition = false;
	}
	if (drawCondition)
	{
		draw_sprite(sHealthbar_bg, 0, healthbar_x, healthbar_y);
		draw_sprite_stretched(sHealthBar, 0, healthbar_x+4, healthbar_y+5, (HP/HP_max) * healthbar_width, healthbar_height);
		draw_sprite(sHealthbar_border, 0, healthbar_x ,healthbar_y);
	}
}

if (room == LevelBoss && !instance_exists(oEnemy))
{
	layer_set_visible("Floor", false);
	if (!global.gamePaused)
	{
		if (!screenShook)
		{
			screenshake(1000000, 7, 10);
			screenShook = true;
		}
		if (leaveTheRoom < 1)
		{
			leaveTheRoom += 0.002;
			draw_set_color(c_white);
			draw_set_alpha(leaveTheRoom);
			draw_rectangle(0, 0, 352, 512, 0);
		}
		else 
		{
			draw_set_alpha(1.0);
			room_goto(AfterDream);
		}
	}
}
