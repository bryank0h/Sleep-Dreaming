if (global.gamePaused && !global.gamePausedforText)
{
	keyUp = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
	keyDown = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));
	pauseOptionSelected += (keyDown - keyUp);
	if (pauseOptionSelected >= array_length(pauseOption)) pauseOptionSelected = 0;
	if (pauseOptionSelected < 0) pauseOptionSelected = array_length(pauseOption) - 1;
	
	keyActivate = keyboard_check_pressed(ord("E"));
	if (keyActivate)
	{
		switch(pauseOptionSelected)
		{
			case 0:
			{
				global.gamePaused = false;
			} break;
			case 1:
			{
				SaveGame();
				game_restart();
			} break;
			case 2:
			{
				SaveGame();
				game_end();
			} break;
		}
	}
}
