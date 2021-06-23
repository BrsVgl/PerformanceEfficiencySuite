CONTAINER Ofalloff_object
{
	NAME	Ofalloff_object;
	INCLUDE Ofalloff_standard;

	HIDE FALLOFF_SIZE;
	
	GROUP FALLOFF_GROUPFALLOFF
	{
		GROUP FALLOFF_SETTINGS
		{
			REAL	FALLOFF_OBJECTMODE_SIZE { MIN 0; UNIT	METER; }
			GROUP
			{
				LINK	FALLOFF_OBJECTMODE_LINK 
				{ 
					ACCEPT 
					{ 
						Obase; 
						1001381; //TP GROUP
					} 
				}
				REAL	FALLOFF_OBJECTMODE_SPLINEDETAIL { UNIT	PERCENT; MIN 1; MAX 100; CUSTOMGUI REALSLIDER; }
			}
		}
	}
}
