
draw_sprite(sHealthbar_bg, 0, healthbar_x, healthbar_y);
draw_sprite_stretched(sHealthBar, 0, healthbar_x+4, healthbar_y+5, (HP/HP_max) * healthbar_width, healthbar_height);
draw_sprite(sHealthbar_border, 0, healthbar_x ,healthbar_y);

