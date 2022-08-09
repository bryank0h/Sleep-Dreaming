// Create Event
// Create the surface for lighting
surface = surface_create(RESOLUTION_W, RESOLUTION_H+25);

// Set the surface target to the new surface instead of the application surface
surface_set_target(surface);

// Clear the surface
draw_clear_alpha(c_black, 0);

// Reset target surface back to the application surface
surface_reset_target();

lightingRadius = 0;
