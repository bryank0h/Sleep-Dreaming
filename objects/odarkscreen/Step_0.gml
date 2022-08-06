// Step Event
// Check that surface exists
if (surface_exists(surface))
{
	surface_set_target(surface);

	draw_set_color(#282f42);

	draw_set_alpha(0.8);

	draw_rectangle(0, 0, 352, 512, 0);

	surface_reset_target();

}
else
{
	// Run the create again if the surface isn't detected
	surface = surface_create(352, 512);
	surface_set_target(surface);
	draw_clear_alpha(c_black, 0);
	surface_reset_target();
}