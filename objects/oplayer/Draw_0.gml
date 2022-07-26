draw_self();

if (flash > 0)
{
	flash--;
	shader_set(shWhite);
	draw_self();
	shader_reset();
}

if (darken > 0)
{
	darken--;
	shader_set(shDark);
	draw_self();
	shader_reset();
}