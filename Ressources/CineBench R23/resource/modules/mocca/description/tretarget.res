CONTAINER Tretarget
{
	NAME Tretarget;
	INCLUDE Texpression;

	GROUP ID_TAGPROPERTIES
	{
		LINK	RT_SOURCE { SCALE_H; ACCEPT { Obase; } }
		LINK	RT_DEST   { SCALE_H; ACCEPT { Obase; } }

		BOOL	RT_USE_HIERARCHY {}
		
	}

	GROUP RT_LEGACY
	{
		LINK	RT_REF    { SCALE_H; ACCEPT { Obase; } }
		DEFAULT 0;
	}
}

