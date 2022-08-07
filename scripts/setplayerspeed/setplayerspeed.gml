// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SetPlayerSpeed(){
	if (room == Home || room == House || room == StartofDream)
	{
		//speedWalk = 0.13;
		return 2;
	}
	else if (room == AfterLevel3)
	{
		return 0.17;
	}
	else
	{
		return 1.5;
	}
}