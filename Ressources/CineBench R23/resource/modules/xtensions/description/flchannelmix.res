CONTAINER FLChannelMix
{
	NAME FLChannelMix;

	INCLUDE FLbase;

	GROUP	FLBase
	{
		DEFAULT 1;

		SEPARATOR { LINE; }

		FIELDLIST FIELDLAYER_CHANNELMIX_SOURCELIST
		{
			NEWLINE;
			FIELD HIDE;
			NOROTATION;
		}

		GROUP FIELDLAYER_CHANNELMIX_GROUP_VALUE
		{
			DEFAULT 1;
			FIELD VALUE;

			LONG FIELDLAYER_CHANNELMIX_VALUE
			{
				CYCLE
				{
					FIELDLAYER_CHANNELMIX_SOURCE_VALUE;
					-1;
					FIELDLAYER_CHANNELMIX_SOURCE_COLOR;
					FIELDLAYER_CHANNELMIX_SOURCE_COLOR_R;
					FIELDLAYER_CHANNELMIX_SOURCE_COLOR_G;
					FIELDLAYER_CHANNELMIX_SOURCE_COLOR_B;
					FIELDLAYER_CHANNELMIX_SOURCE_COLOR_ALPHA;
					-1;
					FIELDLAYER_CHANNELMIX_SOURCE_DIRECTION;
					FIELDLAYER_CHANNELMIX_SOURCE_DIRECTION_X;
					FIELDLAYER_CHANNELMIX_SOURCE_DIRECTION_Y;
					FIELDLAYER_CHANNELMIX_SOURCE_DIRECTION_Z;
					//-1;
					//FIELDLAYER_CHANNELMIX_SOURCE_ROTATION;
					//FIELDLAYER_CHANNELMIX_SOURCE_ROTATION_X;
					//FIELDLAYER_CHANNELMIX_SOURCE_ROTATION_Y;
					//FIELDLAYER_CHANNELMIX_SOURCE_ROTATION_Z;
					//FIELDLAYER_CHANNELMIX_SOURCE_PIVOT;
					//FIELDLAYER_CHANNELMIX_SOURCE_PIVOT_X;
					//FIELDLAYER_CHANNELMIX_SOURCE_PIVOT_Y;
					//FIELDLAYER_CHANNELMIX_SOURCE_PIVOT_Z;
					-1;
					FIELDLAYER_CHANNELMIX_SOURCE_SOLID;
				}
			}
		}

		GROUP FIELDLAYER_CHANNELMIX_GROUP_COLOR
		{
			DEFAULT 1;
			FIELD COLOR;

			LONG FIELDLAYER_CHANNELMIX_COLORMODE
			{
				CYCLE
				{
					FIELDLAYER_CHANNELMIX_COLORMODE_DIRECT;
					FIELDLAYER_CHANNELMIX_COLORMODE_CHANNELS;
				}
			}

			GROUP
			{
				FIELD COLOR;
				COLUMNS 3;

				LONG FIELDLAYER_CHANNELMIX_COLOR_RED {}
				LONG FIELDLAYER_CHANNELMIX_COLOR_GREEN {}
				LONG FIELDLAYER_CHANNELMIX_COLOR_BLUE {}
				LONG FIELDLAYER_CHANNELMIX_COLOR {}
				LONG FIELDLAYER_CHANNELMIX_ALPHA {}
			}
		}

		GROUP FIELDLAYER_CHANNELMIX_GROUP_DIRECTION
		{
			DEFAULT 1;
			FIELD DIRECTION;

			LONG FIELDLAYER_CHANNELMIX_DIRECTIONMODE
			{
				CYCLE
				{
					FIELDLAYER_CHANNELMIX_DIRECTIONMODE_DIRECT;
					FIELDLAYER_CHANNELMIX_DIRECTIONMODE_CHANNELS;
				}
			}

			GROUP
			{
				FIELD DIRECTION;
				COLUMNS 3;

				LONG FIELDLAYER_CHANNELMIX_DIRECTION_X {}
				LONG FIELDLAYER_CHANNELMIX_DIRECTION_Y {}
				LONG FIELDLAYER_CHANNELMIX_DIRECTION_Z {}
			}
			
			LONG FIELDLAYER_CHANNELMIX_DIRECTION {}
		}

		GROUP FIELDLAYER_CHANNELMIX_GROUP_ROTATION
		{
			DEFAULT 1;
			FIELD ROTATION;
			HIDDEN;

			LONG FIELDLAYER_CHANNELMIX_ROTATIONMODE
			{
				CYCLE
				{
					FIELDLAYER_CHANNELMIX_ROTATIONMODE_DIRECT;
					FIELDLAYER_CHANNELMIX_ROTATIONMODE_CHANNELS;
				}
			}

			GROUP
			{
				FIELD ROTATION;
				COLUMNS 3;

				LONG FIELDLAYER_CHANNELMIX_ROTATION_X {}
				LONG FIELDLAYER_CHANNELMIX_ROTATION_Y {}
				LONG FIELDLAYER_CHANNELMIX_ROTATION_Z {}
			}

			LONG FIELDLAYER_CHANNELMIX_ROTATION {}

			SEPARATOR { LINE; }

			LONG FIELDLAYER_CHANNELMIX_PIVOTMODE
			{
				CYCLE
				{
					FIELDLAYER_CHANNELMIX_PIVOTMODE_DIRECT;
					FIELDLAYER_CHANNELMIX_PIVOTMODE_CHANNELS;
				}
			}

			GROUP
			{
				FIELD ROTATION;
				COLUMNS 3;

				LONG FIELDLAYER_CHANNELMIX_PIVOT_X {}
				LONG FIELDLAYER_CHANNELMIX_PIVOT_Y {}
				LONG FIELDLAYER_CHANNELMIX_PIVOT_Z {}
			}

			LONG FIELDLAYER_CHANNELMIX_PIVOT {}
		}
	}
}
