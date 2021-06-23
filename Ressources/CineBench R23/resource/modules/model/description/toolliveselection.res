CONTAINER ToolLiveSelection
{
	NAME ToolLiveSelection;
	INCLUDE ToolBase;

	GROUP MDATA_MAINGROUP
	{
		LONG MDATA_SELECTLIVE_RADIUS { MIN 1; MAX 1000; }
		BOOL MDATA_SELECTLIVE_RADIUS_PEN_PRESSURE { }
		BOOL MDATA_SELECTLIVE_VISIBLE	{ }
		BOOL MDATA_SELECTLIVE_TOLERANT_EDGE	{ }

		LONG MDATA_SELECTLIVE_MODE { CYCLE { MDATA_SELECTLIVE_MODE_NORMAL; MDATA_SELECTLIVE_MODE_VERTEXPAINT; MDATA_SELECTLIVE_MODE_SOFTSELECTION; } }

		GROUP MDATA_VERTEXPAINT
		{
			DEFAULT 1;
			LONG MDATA_VERTEXPAINT_MODE { CYCLE { MDATA_VERTEXPAINT_MODE_ABS; MDATA_VERTEXPAINT_MODE_ADD; MDATA_VERTEXPAINT_MODE_SUB; } }
			REAL MDATA_VERTEXPAINT_STRENGTH	{ UNIT PERCENT; MIN 0.0; MAX 100.0; CUSTOMGUI REALSLIDER; }
			BOOL MDATA_VERTEXPAINT_RADIUS_PEN_PRESSURE { }
			BOOL MDATA_VERTEXPAINT_STRENGTH_PEN_PRESSURE { }
		}
	}

	INCLUDE ToolModelingAxis;
	INCLUDE ToolSetSDSWeight;	
	INCLUDE ToolSoftSelection;
	HIDE MDATA_SOFT_ENABLE;

	HIDE MDATA_COMMANDGROUP;
}
