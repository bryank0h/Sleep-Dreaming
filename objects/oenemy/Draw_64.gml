if (room == LevelBoss && !global.gamePaused && global.readBoss)
{
	draw_sprite(sHealthbar_bg, 0, healthbar_x, healthbar_y);
	draw_sprite_stretched(sHealthBarEnemy, 0, healthbar_x+4, healthbar_y+5, (bossHP/bossMaxHP) * healthbar_width, healthbar_height);
	if (bossHP > bossMaxHP/2) draw_sprite(sHealthbar_border, 0, healthbar_x ,healthbar_y);
	else draw_sprite(sHealthbar_border_Enemy, 0, healthbar_x ,healthbar_y);
}