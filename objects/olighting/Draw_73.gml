// Draw End Event
if (surface_exists(surface))
{
	// Get the X position of the view
	var _x = camera_get_view_x(camera_get_active())

	// Get the Y position of the view
	var _y = camera_get_view_y(camera_get_active());


	// Check what view we are on and draw the surface at _x and _y
	if (view_current == 0)draw_surface(surface, _x, _y);
}
else
{
	// Run the create again if the surface isn't detected
	surface = surface_create(352, 512);
	surface_set_target(surface);
	draw_clear_alpha(c_black, 0);
	surface_reset_target();
}
