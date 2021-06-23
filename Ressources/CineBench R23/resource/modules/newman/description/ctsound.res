CONTAINER CTsound
{
	NAME CTsound;
	INCLUDE CTbase;

	GROUP Obaselist
	{
		HIDE ID_CTRACK_TIME;
		HIDE ID_CTRACK_CONSTANTVELOCITY_V;

		SEPARATOR { LINE; }

		BOOL CID_SOUND_ONOFF { ANIM OFF; }

		BASETIME CID_SOUND_START {  }

		GROUP
		{
			FILENAME CID_SOUND_NAME { SCALE_H; ANIM OFF; }
		}
		GROUP
		{
			COLUMNS 2;
			BUTTON CID_SOUND_PLAY {}
			BUTTON CID_SOUND_STOP {}
		}
		SEPARATOR { }

		STATICTEXT CID_SOUND_SIZE {}
		STATICTEXT CID_SOUND_FREQ {}
		STATICTEXT CID_SOUND_LENGTH {}
		STATICTEXT CID_SOUND_CHANNEL {}
		STATICTEXT CID_SOUND_BITS {}

		DEFAULT	1;
	}

	GROUP ID_CTRACK_PROPERTIES
	{
		HIDE ID_CTRACK_PROPERTIES_TIMETRACK;
	}
}
