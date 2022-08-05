collisionMap = layer_tilemap_get_id(layer_get_id("Col"));

if (room == Home)
{
	speedWalk = 1;
}
else
{
	speedWalk = 2;
}
image_speed = 0;
hSpeed = 0;
vSpeed = 0;
if (variable_global_exists("playerHP"))
{
	HP = global.playerHP;
}
else HP = 5;
HP_max = 5;

healthbar_width = 100;
healthbar_height = 12;

display_set_gui_size(room_width, room_height);
healthbar_x = 2;
if (room == Home) healthbar_y = ystart - 142;
else if (room == Level3) 
{
	healthbar_y = ystart - 120;
}
else healthbar_y = ystart - 153;


currentX = 0;
currentY = 0;
warped = 0;

flash = 0;
darken = 0;
vulnerable = 0;
HPDeducted = false;
dead = 0;
heartWithMe = true;