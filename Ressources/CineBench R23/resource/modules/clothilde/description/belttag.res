CONTAINER BeltTag
{
	NAME Tbelt;
	INCLUDE Tbase;

	GROUP ID_TAGPROPERTIES
	{
		BOOL BELT_DRAW {}

		GROUP
		{
			COLUMNS 4;

			STATICTEXT BELT_TEXT { NOTEXT; }
			BUTTON BELT_SET  {}
			BUTTON BELT_CLEAR {}
			BUTTON BELT_SHOW{}
		}
		LINK BELT_LINK { SCALE_H; ACCEPT { Obase; } }

		SEPARATOR { LINE; }

		GROUP
		{
			COLUMNS 2;

			REAL   BELT_F { MIN 0.0; MAX 100.0; UNIT PERCENT; } LINK BELT_F_MAP { ACCEPT { 5682; } }
			REAL   BELT_S { MIN 0.0;            UNIT PERCENT; } LINK BELT_S_MAP { ACCEPT { 5682; } }
		}	
	}
}