CONTAINER GVfloatfunc
{
	NAME GVfloatfunc;
	INCLUDE GVbase;

	GROUP ID_GVPROPERTIES
	{
		LONG GV_FLOATFUNC_FUNC 
		{
			CYCLE
			{
				TYPE_EXP;
				TYPE_LN;
				TYPE_LN10;
				TYPE_SQRT;
				TYPE_FLOOR;
				TYPE_CEIL;
				TYPE_POW;
				TYPE_POW2;
			}
		}
	}

	GROUP ID_GVPORTS
	{
		REAL GV_FLOATFUNC_INPUT  { INPORT;  STATICPORT; CREATEPORT; }
		REAL GV_FLOATFUNC_OUTPUT { OUTPORT; STATICPORT; CREATEPORT; }
	}
}
