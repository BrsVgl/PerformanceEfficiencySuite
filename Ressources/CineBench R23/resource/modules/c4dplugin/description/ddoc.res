CONTAINER Ddoc
{
	NAME Ddoc;

	GROUP DOCUMENT_GROUP_PROJECTSETTINGS
	{
		DEFAULT 1;
		COLUMNS 2;

		UNITSCALE DOCUMENT_DOCUNIT { ANIM OFF; }
		STATICTEXT { JOINENDSCALE; }

		BUTTON DOCUMENT_SCALEDOCUMENT {}
		STATICTEXT { }

		SEPARATOR { LINE; }
		STATICTEXT { JOINENDSCALE; }

		LONG DOCUMENT_FPS { ANIM OFF; MIN 1; MAX 2500; }
		BASETIME DOCUMENT_TIME { ANIM OFF; }

		BASETIME DOCUMENT_MINTIME	{ ANIM OFF; }
		BASETIME DOCUMENT_MAXTIME	{ ANIM OFF; }

		BASETIME DOCUMENT_LOOPMINTIME	{ ANIM OFF; }
		BASETIME DOCUMENT_LOOPMAXTIME	{ ANIM OFF; }

		SEPARATOR { LINE; }
		STATICTEXT { JOINENDSCALE; }

		REAL DOCUMENT_LOD { ANIM OFF; UNIT PERCENT; MIN 0.0; MAX 100.0; }
		BOOL DOCUMENT_RENDERLOD { ANIM OFF; }

		SEPARATOR { LINE; }
		STATICTEXT { JOINENDSCALE; }

		BOOL DOCUMENT_USEANIMATION { ANIM OFF; }
		BOOL DOCUMENT_USEEXPRESSIONS { ANIM OFF; }
		BOOL DOCUMENT_USEGENERATORS { ANIM OFF; }
		BOOL DOCUMENT_USEDEFORMERS { ANIM OFF; }

		BOOL DOCUMENT_USEMOTIONSYSTEM { ANIM OFF; }
		STATICTEXT { }

		SEPARATOR { LINE; }
		STATICTEXT { JOINENDSCALE; }

		LONG DOCUMENT_DEFAULTMATERIAL_TYPE { ALIGN_LEFT; ANIM OFF; CYCLE { DOCUMENT_DEFAULTMATERIAL_TYPE_WHITE; DOCUMENT_DEFAULTMATERIAL_TYPE_BLUE; DOCUMENT_DEFAULTMATERIAL_TYPE_USER; }}
		STATICTEXT { }

		COLOR DOCUMENT_DEFAULTMATERIAL_COLOR { ANIM OFF; FIT_H; }
		STATICTEXT { JOINENDSCALE; }

		SEPARATOR { LINE; }
		STATICTEXT { JOINENDSCALE; }

		LONG DOCUMENT_CLIPPING_PRESET
		{
			ALIGN_LEFT; ANIM OFF; PARENTCOLLAPSE;
			CYCLE
			{
				DOCUMENT_CLIPPING_PRESET_TINY;
				DOCUMENT_CLIPPING_PRESET_SMALL;
				DOCUMENT_CLIPPING_PRESET_MEDIUM;
				DOCUMENT_CLIPPING_PRESET_LARGE;
				DOCUMENT_CLIPPING_PRESET_HUGE;
				DOCUMENT_CLIPPING_PRESET_CUSTOM;
			}
		}
		STATICTEXT { }

		REAL DOCUMENT_CLIPPING_PRESET_NEAR { FIT_H; PARENTCOLLAPSE DOCUMENT_CLIPPING_PRESET; ANIM OFF; UNIT METER; MIN 0; }
		STATICTEXT { JOINENDSCALE; }

		REAL DOCUMENT_CLIPPING_PRESET_FAR { FIT_H; PARENTCOLLAPSE DOCUMENT_CLIPPING_PRESET; ANIM OFF; UNIT METER; MIN 0; }
		STATICTEXT { JOINENDSCALE; }

		SEPARATOR { LINE; }
		STATICTEXT { JOINENDSCALE; }

		BOOL DOCUMENT_LINEARWORKFLOW { ANIM OFF; }
		STATICTEXT { JOINENDSCALE; }
		LONG DOCUMENT_COLORPROFILE { PARENTCOLLAPSE; ANIM OFF; CYCLE { DOCUMENT_COLORPROFILE_SRGB; DOCUMENT_COLORPROFILE_LINEAR; DOCUMENT_COLORPROFILE_DISABLED; }}
		STATICTEXT { }

		GROUP
		{
			STRING DOCUMENT_COLORINFO { PARENTCOLLAPSE DOCUMENT_COLORPROFILE; ANIM OFF; CUSTOMGUI MULTISTRING; WORDWRAP; READONLY; }
		}

		SEPARATOR { LINE; }
		STATICTEXT { JOINENDSCALE; }

		SEPARATOR { LINE; }
		STATICTEXT { JOINENDSCALE; }

		GROUP
		{
			COLUMNS 1;
			BOOL DOCUMENT_CONVERT_BXDF_TO_COLORCHANNEL { ANIM OFF; }
		}
		STATICTEXT { JOINENDSCALE; }

		SEPARATOR { LINE; }
		STATICTEXT { JOINENDSCALE; }

		GROUP
		{
			COLUMNS 2;

			BUTTON	DOCUMENT_PRESET_COMMAND_LOAD		{  }
			BUTTON	DOCUMENT_PRESET_COMMAND_SAVE		{  }
		}
		STATICTEXT { JOINENDSCALE; }
	}

	GROUP DOCUMENT_GROUP_CINEWARE
	{
		COLUMNS 1;

		BOOL DOCUMENT_CINEWARE_POLYGON_CACHE { ANIM OFF;}
		BOOL DOCUMENT_CINEWARE_ANIMATION_CACHE { ANIM OFF;}
		BOOL DOCUMENT_CINEWARE_MATERIAL_CACHE { ANIM OFF;}

		LONG DOCUMENT_CINEWARE_MATERIAL_WIDTH  { ANIM OFF; MIN 0; MAX 128000; }
		LONG DOCUMENT_CINEWARE_MATERIAL_HEIGHT { ANIM OFF; MIN 0; MAX 128000; }
		LONG DOCUMENT_CINEWARE_MATERIAL_FORMAT { ANIM OFF; CYCLE { } }
		LONG DOCUMENT_CINEWARE_MATERIAL_DEPTH  { ANIM OFF; CYCLE { } }
	}

	GROUP DOCUMENT_INFO_GROUP1
	{
		SCALE_V;

		STRING DOCUMENT_INFO_AUTHOR { ANIM OFF; }
		STRING DOCUMENT_INFO_COPYRIGHT { ANIM OFF; CUSTOMGUI MULTISTRING; SCALE_V; WORDWRAP; }
		STRING DOCUMENT_INFO_README { ANIM OFF; CUSTOMGUI MULTISTRING; SCALE_V; WORDWRAP; }
		STATICTEXT DOCUMENT_INFO_FILEFORMAT { ANIM OFF; BORDER; }
		STATICTEXT DOCUMENT_INFO_FILEVERSION { ANIM OFF; BORDER; }

		STATICTEXT DOCUMENT_INFO_PRGCREATOR_STRING { ANIM OFF; BORDER; }
		STRING DOCUMENT_INFO_PRGCREATOR_NAME { HIDDEN; ANIM OFF; }
		LONG DOCUMENT_INFO_PRGCREATOR_ID { HIDDEN; ANIM OFF; }
		STATICTEXT DOCUMENT_INFO_DATECREATED_STRING { ANIM OFF; BORDER; }

		STATICTEXT DOCUMENT_INFO_PRGWRITER_STRING { ANIM OFF; BORDER; }
		STRING DOCUMENT_INFO_PRGWRITER_NAME { HIDDEN; ANIM OFF; }
		LONG DOCUMENT_INFO_PRGWRITER_ID { HIDDEN; ANIM OFF; }

		STATICTEXT DOCUMENT_INFO_DATESAVED_STRING { ANIM OFF; BORDER; }

		FILENAME DOCUMENT_PATH { HIDDEN; READONLY; ANIM OFF; DIRECTORY; }
		FILENAME DOCUMENT_NAME { HIDDEN; READONLY; ANIM OFF; }
		FILENAME DOCUMENT_FILEPATH { READONLY; ANIM OFF; }

		BITMAPBUTTON DOCUMENT_PREVIEW_IMAGE { SCALE_H; BORDER; }
		LONG DOCUMENT_PREVIEW_COMMAND
		{
			SCALE_H;
			ANIM OFF;
			CUSTOMGUI CYCLEBUTTON;
			CYCLE
			{
				DOCUMENT_PREVIEW_COMMAND_AUTO;
				DOCUMENT_PREVIEW_COMMAND_PASTE;
				DOCUMENT_PREVIEW_COMMAND_FROMEDITOR;
				DOCUMENT_PREVIEW_COMMAND_LOAD;
			}
		}
	}

	GROUP DOCUMENT_INFO_GROUP2
	{
		//STRING DOCUMENT_INFO_PREVIEW { ANIM OFF; }
	}
}
