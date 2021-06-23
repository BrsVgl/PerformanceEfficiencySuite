CONTAINER Oxref
{
	NAME Oxref;
	INCLUDE Obase;

	GROUP ID_OBJECTPROPERTIES
	{
		GROUP
		{
			COLUMNS 3;
			
			BOOL ID_CA_XREF_SHOWOBJECTS { ANIM OFF; }
			BOOL ID_CA_XREF_LOADED { ANIM OFF; }
			BOOL ID_CA_XREF_GENERATOR { ANIM OFF; }
		}
		
		SEPARATOR { }

		GROUP
		{	
			GROUP
			{
				COLUMNS 2;
				
				FILENAME ID_CA_XREF_FILE { NOSELECT; SCALE_H; ANIM OFF; }
				BUTTON ID_CA_XREF_FILE_SELECT { }
				
				FILENAME ID_CA_XREF_PROXY_FILE { NOSELECT; SCALE_H; ANIM OFF; }
				BUTTON ID_CA_XREF_PROXY_FILE_SELECT { }
			}
				
			STRING ID_CA_XREF_NAMESPACE { ANIM OFF; }

		}

		GROUP ID_CA_XREF_ANIM_GROUP
		{
			COLUMNS 2;

			BOOL ID_CA_XREF_ANIMATE { ANIM OFF; }
			BASETIME ID_CA_XREF_TIME { ANIM OFF; }

			BASETIME ID_CA_XREF_OFFSET { ANIM OFF; }
			REAL ID_CA_XREF_SCALE { ANIM OFF; STEP 0.1; }
		}

		GROUP ID_CA_XREF_PIVOT_GROUP
		{
			GROUP
			{
				LAYOUTGROUP; COLUMNS 3;
				GROUP { VECTOR ID_CA_XREF_PIVOT_POS { UNIT METER;  CUSTOMGUI SUBDESCRIPTION; ANIM OFF; } }
				GROUP { VECTOR ID_CA_XREF_PIVOT_SCL { STEP 0.01;   CUSTOMGUI SUBDESCRIPTION; ANIM OFF; } }
				GROUP { VECTOR ID_CA_XREF_PIVOT_ROT { UNIT DEGREE; CUSTOMGUI SUBDESCRIPTION; ANIM OFF; } }
			}
		}

		SEPARATOR { }

		GROUP
		{
			COLUMNS 2;
			
			BUTTON ID_CA_XREF_SWAP { SCALE_H; }
			BUTTON ID_CA_XREF_REFRESH { SCALE_H; }
			BUTTON ID_CA_XREF_EDIT { SCALE_H; }
			BUTTON ID_CA_XREF_OPTIONS { SCALE_H; }
		}
	}

	GROUP Obaselist
	{
		HIDE ID_BASELIST_ICON_SETTINGS_GROUP;
	}
}
