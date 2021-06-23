CONTAINER Oexplosionfx
{
	NAME Oexplosionfx;
	INCLUDE Obase;

	GROUP ID_OBJECTPROPERTIES
	{
		DEFAULT 1;
		REAL EXPLOSIONFX_TIME { MIN 0.0; MAX 100.0; STEP 0.1; UNIT PERCENT; CUSTOMGUI REALSLIDER; STEP 1; MINSLIDER 0; MAXSLIDER 100; DEFAULT 10; }	
	}

	GROUP ID_EXPLOSIONFX_CLUSTER
	{
		DEFAULT 1;
		
		REAL EXPLOSIONFX_THICKNESS { UNIT METER; STEP 1.0; CUSTOMGUI REALSLIDER; STEP 1; MINSLIDER -100; MAXSLIDER 100; DEFAULT 10;}
		REAL EXPLOSIONFX_THICKNESS_RANDOM { PARENTID EXPLOSIONFX_THICKNESS; MIN 0; MAX 100; UNIT PERCENT; CUSTOMGUI REALSLIDER; STEP 1; MINSLIDER 0; MAXSLIDER 100; DEFAULT 0; }
		SEPARATOR { }
		REAL EXPLOSIONFX_DENSITY { MIN 0.0; STEP 1.0; }
		REAL EXPLOSIONFX_DENSITY_RANDOM { PARENTID EXPLOSIONFX_DENSITY; MIN 0.0; MAX 100.0; STEP 1.0; UNIT PERCENT; CUSTOMGUI REALSLIDER; STEP 1; MINSLIDER 0; MAXSLIDER 100; DEFAULT 0; }
		SEPARATOR { }
		LONG EXPLOSIONFX_CLUSTERKIND
		{
			CYCLE
			{
				EXPLOSIONFX_CLUSTERKIND_POLYS;
				EXPLOSIONFX_CLUSTERKIND_AUTOM;
				EXPLOSIONFX_CLUSTERKIND_STAGS;
				EXPLOSIONFX_CLUSTERKIND_SE_PO;
			}
		}
		STRING EXPLOSIONFX_CLUSTER_NAME { PARENTID EXPLOSIONFX_CLUSTERKIND; }
		BOOL EXPLOSIONFX_CLUSTERFIX { PARENTID EXPLOSIONFX_CLUSTERKIND; }
		LONG EXPLOSIONFX_CLUSTER_MIN_POLYS { PARENTID EXPLOSIONFX_CLUSTERKIND;MIN 1; STEP 1; }
		LONG EXPLOSIONFX_CLUSTER_MAX_POLYS { PARENTID EXPLOSIONFX_CLUSTERKIND;MIN 2; STEP 1; }
		SEPARATOR { }
		BOOL EXPLOSIONFX_DISAPPEAR {  }
		LONG EXPLOSIONFX_DISAPPEARKIND
		{
			PARENTID EXPLOSIONFX_DISAPPEAR;
			CYCLE
			{
				EXPLOSIONFX_DISAPPEARKIND_TIME;
				EXPLOSIONFX_DISAPPEARKIND_DIST;
			}
		}
		REAL EXPLOSIONFX_DISAPPEAR_START { PARENTID EXPLOSIONFX_DISAPPEAR; MIN 0.0; STEP 1.0; UNIT METER; }
		REAL EXPLOSIONFX_DISAPPEAR_DELAY { PARENTID EXPLOSIONFX_DISAPPEAR; MIN 0.0; STEP 1.0; UNIT METER; }
	}

	GROUP ID_EXPLOSIONFX_EXPLOSION
	{
		REAL EXPLOSIONFX_EXPLOSTRENGTH { MIN 0.0; STEP 1.0; }
		REAL EXPLOSIONFX_EXPLOSTRENGTH_FALLOFF { PARENTID EXPLOSIONFX_EXPLOSTRENGTH; MIN 0.0; MAX 100.0; STEP 1.0; UNIT PERCENT; CUSTOMGUI REALSLIDER; STEP 1; MINSLIDER 0; MAXSLIDER 100; DEFAULT 0; }
		REAL EXPLOSIONFX_EXPLOSTRENGTH_RANDOM { PARENTID EXPLOSIONFX_EXPLOSTRENGTH; MIN 0.0; MAX 100.0; STEP 1.0; UNIT PERCENT; CUSTOMGUI REALSLIDER; STEP 1; MINSLIDER 0; MAXSLIDER 100; DEFAULT 0; }
		SEPARATOR { }
		LONG EXPLOSIONFX_EXPLODIRECTION
		{
			CYCLE
			{
				EXPLOSIONFX_EXPLODIRECTION_ALL;
				EXPLOSIONFX_EXPLODIRECTION_O_X;
				EXPLOSIONFX_EXPLODIRECTION_E_X;
				EXPLOSIONFX_EXPLODIRECTION_O_Y;
				EXPLOSIONFX_EXPLODIRECTION_E_Y;
				EXPLOSIONFX_EXPLODIRECTION_O_Z;
				EXPLOSIONFX_EXPLODIRECTION_E_Z;
			}
		}
		BOOL EXPLOSIONFX_LINEAR { PARENTID EXPLOSIONFX_EXPLODIRECTION; }
		REAL EXPLOSIONFX_EXPLODIRECTION_RANDOM { PARENTID EXPLOSIONFX_EXPLODIRECTION; MIN 0.0; MAX 100.0; STEP 1.0; UNIT PERCENT; CUSTOMGUI REALSLIDER; STEP 1; MINSLIDER 0; MAXSLIDER 100; DEFAULT 0; }
		SEPARATOR { }
		REAL EXPLOSIONFX_EXPLOTIME { MIN 0.0; STEP 1.0; }
		SEPARATOR { }
		REAL EXPLOSIONFX_DSPEED { MIN 0.0; STEP 1.0; }
		REAL EXPLOSIONFX_DSPEED_FALLOFF { PARENTID EXPLOSIONFX_DSPEED; MIN 0; MAX 100; STEP 1.0; UNIT PERCENT; CUSTOMGUI REALSLIDER; STEP 1; MINSLIDER 0; MAXSLIDER 100; DEFAULT 0; }
		REAL EXPLOSIONFX_DSPEED_RANDOM { PARENTID EXPLOSIONFX_DSPEED; MIN 0; MAX 100; STEP 1.0; UNIT PERCENT; CUSTOMGUI REALSLIDER; STEP 1; MINSLIDER 0; MAXSLIDER 100; DEFAULT 0; }
		SEPARATOR { }
		REAL EXPLOSIONFX_DMAX_RANGE { MIN 0.0; STEP 1.0; UNIT METER; }
		REAL EXPLOSIONFX_DMAX_RANGE_RANDOM { PARENTID EXPLOSIONFX_DMAX_RANGE; MIN 0; MAX 100; STEP 1.0; UNIT PERCENT; CUSTOMGUI REALSLIDER; STEP 1; MINSLIDER 0; MAXSLIDER 100; DEFAULT 0; }
	}
	GROUP ID_EXPLOSIONFX_GRAVITY
	{
		REAL EXPLOSIONFX_GRAVITATION { MIN 0.0;	STEP 0.1; }
		REAL EXPLOSIONFX_GRAVITATION_RANDOM { PARENTID EXPLOSIONFX_GRAVITATION; MIN 0.0; MAX 100.0; STEP 1.0; UNIT PERCENT; CUSTOMGUI REALSLIDER; STEP 1; MINSLIDER 0; MAXSLIDER 100; DEFAULT 0; }
		SEPARATOR { }
		LONG EXPLOSIONFX_GDIRECTION
		{
			CYCLE
			{
				EXPLOSIONFX_GDIRECTION_NO;
				EXPLOSIONFX_GDIRECTION_X;
				EXPLOSIONFX_GDIRECTION_NX;
				EXPLOSIONFX_GDIRECTION_Y;
				EXPLOSIONFX_GDIRECTION_NY;
				EXPLOSIONFX_GDIRECTION_Z;
				EXPLOSIONFX_GDIRECTION_NZ;
			}
		}
		SEPARATOR {  }
		REAL EXPLOSIONFX_GMAX_RANGE { UNIT METER; MIN 0.0; }
		REAL EXPLOSIONFX_GMAX_RANGE_RANDOM { PARENTID EXPLOSIONFX_GMAX_RANGE; MIN 0.0; MAX 100.0; STEP 1.0; UNIT PERCENT; CUSTOMGUI REALSLIDER; STEP 1; MINSLIDER 0; MAXSLIDER 100; DEFAULT 0; }
	}

	GROUP ID_EXPLOSIONFX_ROTATION
	{
		REAL EXPLOSIONFX_WSPEED { STEP 1.0; }
		REAL EXPLOSIONFX_WSPEED_FALLOFF { PARENTID EXPLOSIONFX_WSPEED; MIN 0.0; MAX 100.0; STEP 1.0; UNIT PERCENT; CUSTOMGUI REALSLIDER; STEP 1; MINSLIDER 0; MAXSLIDER 100; DEFAULT 0; }
		REAL EXPLOSIONFX_WSPEED_RANDOM { PARENTID EXPLOSIONFX_WSPEED; MIN 0.0; MAX 100.0; STEP 1.0; UNIT PERCENT; CUSTOMGUI REALSLIDER; STEP 1; MINSLIDER 0; MAXSLIDER 100; DEFAULT 0; }
		SEPARATOR { }
		LONG EXPLOSIONFX_ROTACHSE
		{
			CYCLE
			{
				EXPLOSIONFX_ROTACHSE_C;
				EXPLOSIONFX_ROTACHSE_X;
				EXPLOSIONFX_ROTACHSE_Y;
				EXPLOSIONFX_ROTACHSE_Z;
			}
		}
		REAL EXPLOSIONFX_ROTACHSE_RANDOM { PARENTID EXPLOSIONFX_ROTACHSE; MIN 0.0; MAX 100.0; STEP 1.0; UNIT PERCENT; CUSTOMGUI REALSLIDER; STEP 1; MINSLIDER 0; MAXSLIDER 100; DEFAULT 0; }
	}

	GROUP ID_EXPLOSIONFX_SPECIALS
	{
		REAL EXPLOSIONFX_WINDSPEED { STEP 1.0; }
		REAL EXPLOSIONFX_WINDSPEED_RANDOM { PARENTID EXPLOSIONFX_WINDSPEED; MIN 0.0; MAX 100.0; STEP 1.0; UNIT PERCENT; CUSTOMGUI REALSLIDER; STEP 1; MINSLIDER 0; MAXSLIDER 100; DEFAULT 0; }
		SEPARATOR { } 
		REAL EXPLOSIONFX_WIRBELSPEED { STEP 1.0; }
		REAL EXPLOSIONFX_WIRBELSPEED_RANDOM { PARENTID EXPLOSIONFX_WIRBELSPEED; MIN 0.0; MAX 100.0; STEP 1.0; UNIT PERCENT; CUSTOMGUI REALSLIDER; STEP 1; MINSLIDER 0; MAXSLIDER 100; DEFAULT 0; }
	}
}
