CONTAINER prefs
{
	NAME prefs;
	GROUP PREFS_GROUP
	{
		DEFAULT 1;
		COLUMNS 1;
		
		LONG PREFS_PORT							{ }
		//BOOL PREFS_USE_IPADDRESS	{ }
		STRING PREFS_IPADDRESS			{ }
		FILENAME PREFS_FOLDER				{ DIRECTORY;}
	}
}
