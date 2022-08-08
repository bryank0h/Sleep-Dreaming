// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function RoomToAreaName(_room){
	switch (_room)
	{
		case Home: return "Home Area"; break;
		case House: return "Home"; break;
		case HouseSleeping: return "Nice Cheating Techniques!"; break;
		case StartofDream: return "A Dream...?"; break;
		case Level1: return "The Dream: Level 1"; break;
		case Level2: return "The Dream: Level 2"; break;
		case Level3: return "The Dream: Level 3"; break;
		case AfterLevel3: return "I'm losing myself"; break;
		case Level4: return "The Dream: Level 4"; break;
		case Level5: return "The Dream: Level 5"; break;
		case Level6: return "The Dream: Level 6"; break;
		case Level7: return "The Dream: Level 7"; break;
		case AfterLevel7: return "It's just... Me"; break;
		case GoingToBoss: return "I will fight"; break;
		default: 
		{
			global.room = Cheating;
			return "You shouldn't be here!";
		} break;
		
		
	}
}