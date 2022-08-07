// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function RoomTransition(){
	if (!instance_exists(oTransition))
	{
		with (instance_create_depth(0,0,-9999,oTransition))
		{
			type = argument[0];
			roomToGoTo = argument[1];
		}
	}
}