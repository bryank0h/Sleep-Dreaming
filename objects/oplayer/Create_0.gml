collisionMap = layer_tilemap_get_id(layer_get_id("Col"));
canMove = true;

speedWalk = SetPlayerSpeed();
image_speed = 0;
hSpeed = 0;
vSpeed = 0;
if (variable_global_exists("playerHP"))
{
	HP = global.playerHP;
}
else
{
	HP = 5;
	global.playerHP = HP;
}
HP_max = 5;

healthbar_width = 100;
healthbar_height = 12;

display_set_gui_size(room_width, room_height);
healthbar_x = 2;
healthbar_y = room_height - 178;

currentX = 0;
currentY = 0;
warped = 0;

flash = 0;
darken = 0;
vulnerable = 0;
HPDeducted = false;
dead = 0;
heartWithMe = true;

leaveTheRoom = 0;
screenShook = false;