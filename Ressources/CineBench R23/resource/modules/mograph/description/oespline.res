CONTAINER Oespline
{
	NAME		Oespline;

	INCLUDE Obase;

	GROUP		MGSPLINEEFFECTOR_GROUPEFFECTOR
	{
		DEFAULT 1;

		REAL	MGSPLINEEFFECTOR_STRENGTH
		{
			MINSLIDER 0.0;
			MAXSLIDER 100.0;
			UNIT			PERCENT;
			CUSTOMGUI REALSLIDER;
		}
		SEPARATOR
		{
			LINE;
		}
		GROUP
		{
			COLUMNS 2;

			LONG	MGSPLINEEFFECTOR_OFFSETMODE
			{
				CYCLE
				{
					MGSPLINEEFFECTOR_OFFSETMODE_STEP;
					MGSPLINEEFFECTOR_OFFSETMODE_FALLOFF;
					MGSPLINEEFFECTOR_OFFSETMODE_RELATIVE;
				}
			}
			LONG	MGSPLINEEFFECTOR_RELATIVEAXIS
			{
				CYCLE
				{
					MGSPLINEEFFECTOR_RELATIVEAXIS_X;
					MGSPLINEEFFECTOR_RELATIVEAXIS_XNEG;
					MGSPLINEEFFECTOR_RELATIVEAXIS_Y;
					MGSPLINEEFFECTOR_RELATIVEAXIS_YNEG;
					MGSPLINEEFFECTOR_RELATIVEAXIS_Z;
					MGSPLINEEFFECTOR_RELATIVEAXIS_ZNEG;
				}
			}
			REAL	MGSPLINEEFFECTOR_FALLOFFSTRENGTH
			{
				UNIT	PERCENT;
				MIN 1.0;
				MAXSLIDER 100.0;
				CUSTOMGUI REALSLIDER;
			}
		}
		LINK	MGSPLINEEFFECTOR_SPLINE
		{
			ACCEPT
			{
				Obase;
			}
		}
		VECTOR MGSPLINEEFFECTOR_UP_VECTOR
		{
		}
		GROUP
		{
			COLUMNS 2;
			LINK	MGSPLINEEFFECTOR_RAIL_SPLINE
			{
				ACCEPT
				{
					Obase;
				}
			}
			BOOL MGSPLINEEFFECTOR_TARGET_RAIL {}
		}
		SEPARATOR
		{
			LINE;
		}
		REAL	MGSPLINEEFFECTOR_OFFSET
		{
			UNIT	PERCENT;
			MINSLIDER 0.0;
			MAXSLIDER 100.0;
			CUSTOMGUI REALSLIDER;
		}
		REAL	MGSPLINEEFFECTOR_START
		{
			UNIT	PERCENT;
			MINSLIDER 0.0;
			MAXSLIDER 100.0;
			CUSTOMGUI REALSLIDER;
		}
		REAL	MGSPLINEEFFECTOR_END
		{
			UNIT	PERCENT;
			MINSLIDER 0.0;
			MAXSLIDER 100.0;
			CUSTOMGUI REALSLIDER;
		}
		BOOL	MGSPLINEEFFECTOR_CLAMP
		{
		}
		SEPARATOR
		{
			LINE;
		}
		LONG	MGSPLINEEFFECTOR_SEGMENTMODE
		{
			CYCLE
			{
				MGSPLINEEFFECTOR_SEGMENTMODE_INDEX;
				MGSPLINEEFFECTOR_SEGMENTMODE_OFFSET;
				MGSPLINEEFFECTOR_SEGMENTMODE_RANDOM;
				MGSPLINEEFFECTOR_SEGMENTMODE_SPACED;
			}
		}
		LONG	MGSPLINEEFFECTOR_SEGMENTINDEX
		{
			MIN 0;
		}
		LONG	MGSPLINEEFFECTOR_SEGMENTSEED
		{
			MIN 0;
		}
		SEPARATOR
		{
			LINE;
		}
	}
	GROUP MGSPLINEEFFECTOR_GROUPPARAMETER
	{
		DEFAULT 1;

		GROUP MGSPLINEEFFECTOR_GROUPTRANSFORM
		{
			DEFAULT 1;

			LONG	MGSPLINEEFFECTOR_TRANSFORMMODE
			{
				CYCLE
				{
					MGSPLINEEFFECTOR_TRANSFORMMODE_ABSOLUTE;
					MGSPLINEEFFECTOR_TRANSFORMMODE_RELATIVE;
					MGSPLINEEFFECTOR_TRANSFORMMODE_RELSPLINE;
				}
			}
			GROUP
			{
				LAYOUTGROUP;
				COLUMNS 2;

				GROUP
				{
					BOOL	MGSPLINEEFFECTOR_POSITION_ACTIVE
					{
					}
				}
				GROUP
				{
					BOOL	MGSPLINEEFFECTOR_ROTATION_ACTIVE
					{
					}
					VECTOR	MGSPLINEEFFECTOR_ROTATION
					{
						UNIT			DEGREE;
						CUSTOMGUI SUBDESCRIPTION;
					}
				}
			}
		}
	}
	INCLUDE Oedeformer_panel;
}
