CONTAINER ToolSlide
{
	NAME ToolSlide;
	INCLUDE ToolBase;

	HIDE MDATA_COMMANDGROUP;

	GROUP MDATA_MAINGROUP
	{
		REAL MDATA_SLIDE_PERCENT { UNIT PERCENT; MIN 0.0; MAX 100.0; MAXEX; MINSLIDER 0.0; MAXSLIDER 100.0; CUSTOMGUI REALSLIDER; }
	}
}
