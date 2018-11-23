init()
{
	level.inFinalKillcam = false;
	level.randomcolour = (RandomFloat(1), RandomFloat(1), RandomFloat(1));
	level thread maps\cwp\_flags::init();
	level thread maps\cwp\_health::init();
	level thread maps\cwp\_kdratio::init();	
	level thread maps\cwp\_mapvote::init();	
	
}