draw_set_color(c_white);
draw_set_alpha(0.13);
draw_rectangle(0, 0, 352, 512, 0);
draw_set_alpha(1.0);

if (titleVisible > 0)
{
	draw_set_font(fText);
	draw_set_halign(fa_center);
	draw_set_valign(fa_bottom);
	draw_set_color(c_white);

	var _print2 = "Created by Bryan Koh";
	
	draw_sprite(sTitle, 0, 0, -RESOLUTION_H + titleVisible * RESOLUTION_H + 5);
	draw_text(RESOLUTION_W/2 , -RESOLUTION_H + titleVisible * RESOLUTION_H + 65 , _print2);
	
	
	draw_set_alpha(titleVisible * abs(sin(get_timer() * 0.000001 * pi)));
	//draw_sprite(sPressEtoStart, 1, 0, RESOLUTION_H - 20);
	draw_set_font(fText);
	draw_set_halign(fa_center);
	draw_set_valign(fa_bottom);
	draw_set_color(c_white);

	var _print1 = "Press E to Start";
	draw_text((RESOLUTION_W)/2, RESOLUTION_H - 30, _print1);
	draw_set_alpha(1.0);
}

if (slotsVisible > 0)
{
	// Draw save slots
	draw_set_alpha(slotsVisible)
	for (var _slot = 0; _slot <= 2; _slot++)
	{
		// Draw boxes
		var _y = 16 + _slot * 48;
		var _x = 160;
		var _img = 2;
		if (slotSelected == _slot)
		{
			_img = 3;
			// Draw player pointer
			draw_sprite(sPlayerSleeping,0,_x-20,_y+35)
		}
		NineSliceBoxStretched(sTextBoxBg, _x, _y, 312, _y + 48, _img);
		// Draw the save data
		draw_set_font(fText);
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		draw_set_color(c_white);
		if (slotData[_slot] == -1)
		{
			draw_text(_x + 10, _y + 8, "Start new game");
		}
		else
		{
			draw_text(_x + 10, _y + 8, RoomToAreaName(slotData[_slot][? "room"]));
		}

	}
	draw_set_alpha(1.0);
}



