if (global.gamePaused && !global.gamePausedforText)
{
	savedGameText = "";
	if (savedGame) savedGameText += "( Saved! )"
	draw_set_color(c_black);
	draw_set_alpha(0.75);
	draw_rectangle(0,0,RESOLUTION_W,RESOLUTION_H,false);
	draw_set_alpha(1.0);
	draw_set_color(c_white);
	draw_set_font(fText);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	draw_text(RESOLUTION_W * 0.5, RESOLUTION_H * 0.5 - 10, "=====  Game Paused  =====");
	for (var i = 0; i < array_length(pauseOption); i++)
	{
		var _print = "";
		if (i == 1)
		{
			if (savedGame)
			{
				_print += "> " + pauseOption[i] + " " + savedGameText + " <";
			}
			else if (i == pauseOptionSelected)
			{
				_print += "> " + pauseOption[i] + " <";
			}
			else
			{
				_print += pauseOption[i];
				draw_set_alpha(0.7);
			}
		}
		else if (i == pauseOptionSelected)
		{
			_print += "> " + pauseOption[i] + " <";
		}
		else
		{
			_print += pauseOption[i];
			draw_set_alpha(0.7);
		}
		draw_text(RESOLUTION_W * 0.5, RESOLUTION_H * 0.5 + 8 + (i * 13), _print);
		draw_set_alpha(1.0);
	}
}


