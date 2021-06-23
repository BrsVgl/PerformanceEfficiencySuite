CONTAINER Xxmbsubsurface
{
	NAME Xxmbsubsurface;

	INCLUDE Mpreview;
	INCLUDE Xbase;

	GROUP ID_SHADERPROPERTIES
	{	
		DEFAULT 1;

		LONG XMBSUBSURFACESHADER_PRESET		
 		{ 
			CYCLE 
			{ 
				XMBSUBSURFACESHADER_PRESET_CUSTOM; 
				XMBSUBSURFACESHADER_PRESET_APPLE;
				XMBSUBSURFACESHADER_PRESET_CHICKEN;
				XMBSUBSURFACESHADER_PRESET_CREAM;
				XMBSUBSURFACESHADER_PRESET_KETCHUP;
				XMBSUBSURFACESHADER_PRESET_MARBLE;
				XMBSUBSURFACESHADER_PRESET_MILK_SKIM;
				XMBSUBSURFACESHADER_PRESET_MILK_WHOLE;
				XMBSUBSURFACESHADER_PRESET_POTATO;
				XMBSUBSURFACESHADER_PRESET_SKIN_DARK;
				XMBSUBSURFACESHADER_PRESET_SKIN_LIGHT;
				XMBSUBSURFACESHADER_PRESET_SPECTRALON;
			} 

		}

		
		SEPARATOR { LINE; }

		COLOR XMBSUBSURFACESHADER_DIFFUSE 		{ OPEN; }
		REAL XMBSUBSURFACESHADER_STRENGTH 		{ UNIT PERCENT; MIN 0.0; MAX 10000.0;  MINSLIDER 0.0; MAXSLIDER 100.0; CUSTOMGUI REALSLIDER; }
		SHADERLINK XMBSUBSURFACESHADER_SHADER		{ }
			
		SEPARATOR { LINE; }

		REAL XMBSUBSURFACESHADER_LENGTH			{ PARENTCOLLAPSE; UNIT METER; MIN 0.001; MAX 100000.0; MINSLIDER 0.001; MAXSLIDER 100.0; CUSTOMGUI REALSLIDER; }
		REAL XMBSUBSURFACESHADER_LENGTH_R		{ PARENTCOLLAPSE XMBSUBSURFACESHADER_LENGTH; UNIT PERCENT; MIN 0.01; MAX 10000.0; MINSLIDER 100.0; MAXSLIDER 1000.0; CUSTOMGUI REALSLIDER; }	
		REAL XMBSUBSURFACESHADER_LENGTH_G		{ PARENTCOLLAPSE XMBSUBSURFACESHADER_LENGTH; UNIT PERCENT; MIN 0.01; MAX 10000.0; MINSLIDER 100.0; MAXSLIDER 1000.0; CUSTOMGUI REALSLIDER; }
		REAL XMBSUBSURFACESHADER_LENGTH_B		{ PARENTCOLLAPSE XMBSUBSURFACESHADER_LENGTH; UNIT PERCENT; MIN 0.01; MAX 10000.0; MINSLIDER 100.0; MAXSLIDER 1000.0; CUSTOMGUI REALSLIDER; }
	}

	GROUP XMBSUBSURFACESHADER_GROUP_MULTIPLE
	{
		LONG XMBSUBSURFACESHADER_MULTIPLE_MODE	
		{
			CYCLE
			{
				XMBSUBSURFACESHADER_MULTIPLE_MODE_CACHE;
				XMBSUBSURFACESHADER_MULTIPLE_MODE_DIRECT;
			}

		}	
		BOOL XMBSUBSURFACESHADER_MULTIPLE_ENABLED	{ }

		BOOL XMBSUBSURFACESHADER_CACHE_INTERPOLATION	{ ANIM OFF; }
		REAL XMBSUBSURFACESHADER_CACHE_SAMPLE_DENSITY	{ UNIT PERCENT; MIN 10.0; MAX 1000.0; MINSLIDER 10.0; MAXSLIDER 1000.0; CUSTOMGUI REALSLIDER; }
		REAL XMBSUBSURFACESHADER_CACHE_SMOOTHING	{ UNIT PERCENT; MIN 0.0; MAX 1000.0; MINSLIDER 0.0; MAXSLIDER 1000.0; CUSTOMGUI REALSLIDER; }
		REAL XMBSUBSURFACESHADER_CACHE_ERROR 		{ MIN 0.01; MAX 1.0; STEP 0.01; MINSLIDER 0.01; MAXSLIDER 1.0; CUSTOMGUI REALSLIDER; }	
		
		BOOL XMBSUBSURFACESHADER_DIRECT_SPLIT		{ }
		REAL XMBSUBSURFACESHADER_DIRECT_RATIO		{ MIN 0.0; MAX 1.0; STEP 0.01; MINSLIDER 0.0; MAXSLIDER 1.0; CUSTOMGUI REALSLIDER; }
		
		SEPARATOR { LINE; }

		BOOL XMBSUBSURFACESHADER_MULTIPLE_CUSTOM_ENABLED  { ANIM OFF; }
		REAL XMBSUBSURFACESHADER_MULTIPLE_CUSTOM_SAMPLING { MIN 0.0; MAX 16.0; STEP 0.01; MINSLIDER 0.0; MAXSLIDER 16.0; CUSTOMGUI REALSLIDER; }
	}

	GROUP XMBSUBSURFACESHADER_GROUP_SINGLE
	{
		BOOL XMBSUBSURFACESHADER_SINGLE_ENABLED		{ }
		BOOL XMBSUBSURFACESHADER_SINGLE_SPLIT		{ }
		BOOL XMBSUBSURFACESHADER_SINGLE_TRACE		{ }
		REAL XMBSUBSURFACESHADER_SINGLE_PHASE		{ MIN -1.0; MAX 1.0; STEP 0.01; MINSLIDER -1.0; MAXSLIDER 1.0; CUSTOMGUI REALSLIDER; }

		SEPARATOR { LINE; }

		BOOL XMBSUBSURFACESHADER_SINGLE_CUSTOM_ENABLED	{ ANIM OFF; }
		REAL XMBSUBSURFACESHADER_SINGLE_CUSTOM_SAMPLING	{ MIN  0.0; MAX 16.0; STEP 0.01; MINSLIDER  0.0; MAXSLIDER 16.0; CUSTOMGUI REALSLIDER; }
	}

	GROUP XMBSUBSURFACESHADER_GROUP_ADVANCED
	{
		REAL XMBSUBSURFACESHADER_FRESNEL		{ UNIT PERCENT; MIN 0.0; MAX 100.0; MINSLIDER 0.0; MAXSLIDER 100.0; CUSTOMGUI REALSLIDER; }
		REAL XMBSUBSURFACESHADER_DITHER			{ UNIT PERCENT; MIN 0.0; MAX 500.0; MINSLIDER 0.0; MAXSLIDER 100.0; CUSTOMGUI REALSLIDER; }
		REAL XMBSUBSURFACESHADER_IOR 			{ MIN 1.0; MAX 2.0; STEP 0.01; MINSLIDER 1.0; MAXSLIDER 2.0; CUSTOMGUI REALSLIDER; }
	}

	GROUP XMBSUBSURFACESHADER_GROUP_LIGHTS
	{
		BOOL XMBSUBSURFACESHADER_LIGHTS_GI		{ }
		LONG XMBSUBSURFACESHADER_LIGHTS_MODE
		{
			CYCLE
			{
				XMBSUBSURFACESHADER_LIGHTS_MODE_INCLUDE;
				XMBSUBSURFACESHADER_LIGHTS_MODE_EXCLUDE;
			}
		}

		IN_EXCLUDE XMBSUBSURFACESHADER_LIGHTS
		{
			NUM_FLAGS 0;
			INIT_STATE 0;
			SEND_SELCHNGMSG 1;
			ACCEPT 					{ Olight; };
		}
	}
	
	GROUP XMBSUBSURFACESHADER_GROUP_GPURENDER
	{
		DEFAULT 1;

		REAL XMBSUBSURFACESHADER_GPURENDER_SSS_WEIGHT 		{ PARENTCOLLAPSE; MIN 0.0; MAX 100.0; UNIT PERCENT; MINSLIDER 0.0; MAXSLIDER 100.0; STEP 1.0; CUSTOMGUI REALSLIDER; }
		SHADERLINK XMBSUBSURFACESHADER_GPURENDER_SSS_WEIGHT_SHADER		{ PARENTCOLLAPSE XMBSUBSURFACESHADER_GPURENDER_SSS_WEIGHT; }
		SEPARATOR { LINE; }

		LONG XMBSUBSURFACESHADER_GPURENDER_PRESET		
 		{ 
			CYCLE 
			{ 
				XMBSUBSURFACESHADER_PRESET_CUSTOM; 
				XMBSUBSURFACESHADER_PRESET_APPLE;
				XMBSUBSURFACESHADER_PRESET_CHICKEN;
				XMBSUBSURFACESHADER_PRESET_CREAM;
				XMBSUBSURFACESHADER_PRESET_KETCHUP;
				XMBSUBSURFACESHADER_PRESET_MARBLE;
				XMBSUBSURFACESHADER_PRESET_MILK_SKIM;
				XMBSUBSURFACESHADER_PRESET_MILK_WHOLE;
				XMBSUBSURFACESHADER_PRESET_POTATO;
				XMBSUBSURFACESHADER_PRESET_SKIN_DARK;
				XMBSUBSURFACESHADER_PRESET_SKIN_LIGHT;
				XMBSUBSURFACESHADER_PRESET_SPECTRALON;
			} 

		}

		COLOR XMBSUBSURFACESHADER_GPURENDER_SURFACE_COLOR 		{ PARENTCOLLAPSE; }
		SHADERLINK XMBSUBSURFACESHADER_GPURENDER_SURFACE_COLOR_SHADER		{ PARENTCOLLAPSE XMBSUBSURFACESHADER_GPURENDER_SURFACE_COLOR; }

		REAL XMBSUBSURFACESHADER_GPURENDER_RADIUS_SCALE 		{ MIN 0.0; MAX 100000.0;  MINSLIDER 1.0; MAXSLIDER 1000.0; UNIT METER; CUSTOMGUI REALSLIDER; }	
		COLOR XMBSUBSURFACESHADER_GPURENDER_RADIUS_RGB 		{ }
		SEPARATOR { LINE; }

		REAL XMBSUBSURFACESHADER_GPURENDER_PHASE		{ MIN -1.0; MAX 1.0; STEP 0.01; MINSLIDER -1.0; MAXSLIDER 1.0; CUSTOMGUI REALSLIDER; }
		BOOL XMBSUBSURFACESHADER_GPURENDER_IS_TRANSPARENT		{ }		
		SEPARATOR { LINE; }

		COLOR XMBSUBSURFACESHADER_GPURENDER_EMISSION_COLOR 		{ PARENTCOLLAPSE; }
		SHADERLINK XMBSUBSURFACESHADER_GPURENDER_EMISSION_SHADER		{ PARENTCOLLAPSE XMBSUBSURFACESHADER_GPURENDER_EMISSION_COLOR; }
		REAL XMBSUBSURFACESHADER_GPURENDER_EMISSION_BRIGHTNESS 		{ MIN 0.0; MAX 10000.0;  MINSLIDER 0.0; MAXSLIDER 100.0; CUSTOMGUI REALSLIDER; }
		SEPARATOR { LINE; }
		BOOL XMBSUBSURFACESHADER_GPURENDER_MULTISCATTER_ENABLED		{ }

	}
}
