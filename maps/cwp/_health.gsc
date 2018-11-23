init()
{
	while( 1 )
	{
		level waittill( "connected", player );
		player thread numerical_health();
	}
}
 
numerical_health()
{
	self endon( "disconnect" );
	level endon ("vote started");
 
	while( !isPlayer( self ) || !isAlive( self ) )
		wait( 0.05 );
	
	level endon ("vote started");
	self.hp = newClientHudElem(self);
	self.hp.alignX = "center";
	self.hp.alignY = "bottom";
	self.hp.horzAlign = "center";
	self.hp.vertAlign = "bottom";
	self.hp.x = 0;
	self.hp.y = 0;
	self.hp.fontscale = 1.4;
	self.hp.hidewheninmenu = true;
	self.hp.label = &"Health: &&1";
	self.hp fadeOverTime(.5);
	self.hp.alpha = 1;
	self.hp.glowAlpha = 1;
	
	
	
	
	level endon ("vote started");
	while( self.health > 0 )
	{
		self.hp setValue( self.health );
		self.hp.glowColor = ( 1 - ( self.health / self.maxhealth ), self.health / self.maxhealth, 0 );
		wait( 0.05 );
	}
 
	if( isDefined( self.hp ) )
		self.hp destroy();
 
	self thread numerical_health();
}