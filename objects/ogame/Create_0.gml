global.gameLoaded = false;
global.gamePaused = false;
global.gamePausedforText = false;
global.textSpeed = .3;
global.gameSaveSlot = 0;
global.readLevel1 = false;
global.readBoss = false;
global.gameFinished = false;
global.readAwake = false;

window_set_size(display_get_width() * 0.7, display_get_height() * 0.7);
window_set_fullscreen(true);

//surface_resize(application_surface, RESOLUTION_W, RESOLUTION_H);
display_set_gui_size(RESOLUTION_W,RESOLUTION_H);

