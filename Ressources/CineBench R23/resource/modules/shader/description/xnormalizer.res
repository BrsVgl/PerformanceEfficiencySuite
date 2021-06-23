////////////////////////////////////////////////////////////////
// xnormalizer
////////////////////////////////////////////////////////////////
// (c) MAXON Computer GmbH, all rights reserved
////////////////////////////////////////////////////////////////

CONTAINER xnormalizer
{
	NAME xnormalizer;

	INCLUDE Mpreview;
	INCLUDE Xbase;

	GROUP ID_SHADERPROPERTIES
	{
		COLUMNS 2;

		SHADERLINK	XNORM_SHADERLINK		{  }
		STATICTEXT	{ JOINENDSCALE; }

		REAL				XNORM_STRENGTH			{ UNIT PERCENT; MIN 0.0; MAXSLIDER 500.0; CUSTOMGUI REALSLIDER; }
		STATICTEXT	{ JOINENDSCALE; }

		LONG				XNORM_FILTER
		{
			CYCLE
			{
				XNORM_FILTER_CONDENSED;
				XNORM_FILTER_SOBEL_2X;
				XNORM_FILTER_SOBEL_4X;
			}
		}
		STATICTEXT	{  }

		BOOL				XNORM_INVERT				{  }
		STATICTEXT	{  }

		REAL				XNORM_DELTA					{ UNIT PERCENT; MIN 0.0001; STEP 1.0; }
		STATICTEXT	{  }

		BOOL				XNORM_CLAMP_UV			{  }
		STATICTEXT	{  }
	}
}
