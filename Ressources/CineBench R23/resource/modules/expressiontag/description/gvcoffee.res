CONTAINER GVcoffee
{
	NAME GVcoffee;
	INCLUDE GVbase;

	GROUP ID_GVPROPERTIES
	{
		SCALE_V;
    STRING GV_COFFEE_CODE { CUSTOMGUI MULTISTRING; SCALE_V; }
		GROUP
		{
			BUTTON GV_COFFEE_UNLOCK {}
		}
	}

	GROUP ID_GVPORTS
	{
		BOOL GV_COFFEE_ON										{ INPORT; }

		BOOL GV_COFFEE_BOOL_INPUT						{ INPORT; MULTIPLE; }
		BOOL GV_COFFEE_BOOL_OUTPUT					{ OUTPORT; MULTIPLE; }

		LONG GV_COFFEE_LONG_INPUT						{ INPORT; MULTIPLE; }
		LONG GV_COFFEE_LONG_OUTPUT					{ OUTPORT; MULTIPLE; }

		REAL GV_COFFEE_REAL_INPUT						{ INPORT; MULTIPLE; CREATEPORT 2; }
		REAL GV_COFFEE_REAL_OUTPUT					{ OUTPORT; MULTIPLE; CREATEPORT; }

		BASETIME GV_COFFEE_TIME_INPUT				{ INPORT; MULTIPLE; }
		BASETIME GV_COFFEE_TIME_OUTPUT			{ OUTPORT; MULTIPLE; }

		VECTOR GV_COFFEE_VECTOR_INPUT				{ INPORT; MULTIPLE; }
		VECTOR GV_COFFEE_VECTOR_OUTPUT			{ OUTPORT; MULTIPLE; }

		MATRIX GV_COFFEE_MATRIX_INPUT				{ INPORT; MULTIPLE; }
		MATRIX GV_COFFEE_MATRIX_OUTPUT			{ OUTPORT; MULTIPLE; }

		STRING GV_COFFEE_STRING_INPUT				{ INPORT; MULTIPLE; }
		STRING GV_COFFEE_STRING_OUTPUT			{ OUTPORT; MULTIPLE; }

		FILENAME GV_COFFEE_FILENAME_INPUT		{ INPORT; MULTIPLE; }
		FILENAME GV_COFFEE_FILENAME_OUTPUT	{ OUTPORT; MULTIPLE; }

		LINK GV_COFFEE_LINK_INPUT						{ INPORT; MULTIPLE; }
		LINK GV_COFFEE_LINK_OUTPUT					{ OUTPORT; MULTIPLE; }
	}
}
