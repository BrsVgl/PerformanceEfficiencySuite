CONTAINER prefscolor
{
	NAME prefscolor;
	SCALE_V;
	
	GROUP PREF_COLOR_MAIN_GROUP
	{
		DEFAULT 1;
		COLUMNS 1;	
		SCALE_V;
		
		LISTVIEW PREF_COLOR_LIST { COLOR; SCALE_V;}
		SEPARATOR { }
		COLOR PREF_COLOR_COLORS { OPEN; }

		SEPARATOR { LINE; }

		BUTTON PREF_COLOR_RESET { }
	}
}
