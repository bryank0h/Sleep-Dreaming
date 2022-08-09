if (global.gameFinished)
{
	draw_set_color(c_black);
	draw_set_alpha(1);
	draw_rectangle(0, 0, 352, 512, 0);
	
	draw_set_alpha(1.0);
	draw_set_color(c_white);
	draw_set_font(fText);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	draw_text(RESOLUTION_W * 0.5, RESOLUTION_H * 0.5 - 45, "Thanks for playing!");
	draw_text(RESOLUTION_W * 0.5, RESOLUTION_H * 0.5 - 30, "Life is difficult. But no pain will last forever.");
	draw_text(RESOLUTION_W * 0.5, RESOLUTION_H * 0.5 - 15, "Stay Strong :)");
	draw_text(RESOLUTION_W * 0.5, RESOLUTION_H * 0.5, "Game Created for GPN Assignment 2");
	
	draw_text(RESOLUTION_W * 0.5, RESOLUTION_H * 0.5 + 15, "(Do not press the spacebar 10 times, nothing will happen.)")
}

