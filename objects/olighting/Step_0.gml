// Step Event
// Check that surface exists
if (surface_exists(surface))
{

	if (room == Level4 || room == Level5) lightingRadius = 40;
	
	if (lightingRadius != 0)
	{
		// Switch surface to draw to
		surface_set_target(surface);

		// Select the colour to draw
		draw_set_color(c_black);

		// Set the alpha value to draw at
		draw_set_alpha(0.9);

		// Fill View with black
		draw_rectangle(0, 0, 352, 600, 0);

		// Reset the alpha
		draw_set_alpha(1);
	
		// Draw Circle in Step Event

		// Set blend mode to subtract
		gpu_set_blendmode(bm_subtract);

		// Set colour to draw
		draw_set_color(c_white);
		// Check if Player object exists
		if (instance_exists(oPlayer))
		{
			with (oPlayer)
			{
				// Draw the light circle
				draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), other.lightingRadius + random_range(-1, 1), false);
			}
		}
		if (oEnemy.visible == true)
		{
			with (oEnemy)
			{
				// Draw the light circle
				draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 35 + random_range(-1, 1), false);
			}
		}
		
		gpu_set_blendmode(bm_normal);
		draw_set_alpha(1);
		surface_reset_target();
	}
	

}
else
{
	// Run the create again if the surface isn't detected
	surface = surface_create(352, 512);
	surface_set_target(surface);
	draw_clear_alpha(c_black, 0);
	surface_reset_target();
}