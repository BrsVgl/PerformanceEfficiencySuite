CONTAINER CTdoodle
{
	NAME		CTdoodle;
	INCLUDE CTbase;

	GROUP Obaselist
	{
		HIDE ID_CTRACK_TIME;

		SEPARATOR { LINE; }

		//BOOL CID_DOODLE_ONOFF {}

		GROUP
		{
			COLUMNS 2;
			//	LINK CID_DOODLE_IMAGE { SCALE_H; }
			//	BUTTON CID_DOODLE_CHOOSE {}
		}

		DEFAULT	1;
	}
}
