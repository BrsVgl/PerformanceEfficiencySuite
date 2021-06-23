////////////////////////////////////////////////////////////////
// xrain
////////////////////////////////////////////////////////////////
// (c) MAXON Computer GmbH, all rights reserved
////////////////////////////////////////////////////////////////

CONTAINER xrain
{
	NAME xrain;

	INCLUDE Mpreview;
	INCLUDE Xbase;

	GROUP ID_SHADERPROPERTIES
	{
		COLUMNS 2;

		SHADERLINK	XRAIN_SHADERLINK				{  }
		STATICTEXT	{ JOINENDSCALE; }

		LONG				XRAIN_DIRECTION
		{
			CYCLE
			{
				XRAIN_DIRECTION_U1;
				XRAIN_DIRECTION_U2;
				XRAIN_DIRECTION_V1;
				XRAIN_DIRECTION_V2;
			}
		}
		STATICTEXT	{  }

		REAL				XRAIN_INTENSITY					{ UNIT PERCENT; STEP 1.0; MIN 0.0; MAX 5000.0; MINSLIDER 0.0; MAXSLIDER 200.0; }
		STATICTEXT	{  }

		LONG				XRAIN_SAMPLES						{ MIN 4; MAX 1024; }
		STATICTEXT	{  }

		LONG				XRAIN_WEIGHTED
		{
			CYCLE
			{
				XRAIN_WEIGHTED_NONE;
				XRAIN_WEIGHTED_1;
				XRAIN_WEIGHTED_2;
			}
		}
		STATICTEXT	{  }

		BOOL				XRAIN_CLAMP							{  }
		STATICTEXT	{  }
		
		SHADERLINK	XRAIN_WEIGHTSHADER_LINK	{  }
		STATICTEXT	{ JOINENDSCALE; }
		
		REAL				XRAIN_WEIGHTSHADER_INTENSITY	{ UNIT PERCENT; MIN 0.0; MAX 100.0; CUSTOMGUI REALSLIDER; }
		STATICTEXT	{ JOINENDSCALE; }
	}
}
