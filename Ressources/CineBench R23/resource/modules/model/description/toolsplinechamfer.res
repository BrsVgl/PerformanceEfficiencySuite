CONTAINER ToolSplineChamfer
{
	NAME		ToolSplineChamfer;
	INCLUDE ToolBase;

	GROUP MDATA_MAINGROUP
	{
		BOOL MDATA_SPLINE_CHAMFERFLAT { }
		REAL MDATA_SPLINE_CHAMFERRADIUS { UNIT METER; MIN 0; }
	}
}
