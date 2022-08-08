// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function RoomToAreaName(_room){
	switch (_room)
	{
		case Home: return "Home Area"; break;
		case House: return "Home"; break;
		case HouseSleeping: return "Just Let Him Sleep."; break;
		case StartofDream: return "A Dream...?"; break;
		case Level1: return "The Dream: Level 1"; break;
		case Level2: return "The Dream: Level 2"; break;
		case Level3: return "The Dream: Level 3"; break;
		case AfterLevel3: return "I'm losing myself"; break;
		case Level4: return "The Dream: Level 4"; break;
		default: return "Such unkn0wn much W0W"; break;
	}
}