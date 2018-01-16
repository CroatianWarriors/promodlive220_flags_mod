init()
{
	level.inFinalKillcam = false;
	level.randomcolour = (RandomFloat(1), RandomFloat(1), RandomFloat(1));
	level thread cwp\_flags::init();
	thread cwp\_geo::init();
    thread cwp\_kdratio::init();
}